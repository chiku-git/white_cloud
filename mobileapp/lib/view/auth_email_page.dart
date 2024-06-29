import 'package:flutter/services.dart';
import 'package:white_cloud/importer.dart';

class AuthEmailPage extends ConsumerWidget {
  static const int authCodeLength = 4;
  static const path = '/email/auth/';
  final String email;

  const AuthEmailPage({super.key, required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(emailAuthStateProvider.notifier).email = email;

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: _Body(),
        )
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ListView(
        children: [
          const Text(
            Strings.sentAuthCodeByEmail,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16),
          ),
          Margin.vertical(30),
          _AuthCodeInputWidget(),
          _AuthErrorWidget(),
          _AuthCodeReSendLinkWidget(),
          Margin.vertical(30),
          BottomRightAlign(
              child: _AuthButtonWidget()
          ),
        ],
      ),
    );
  }
}

class _AuthErrorWidget extends ConsumerWidget with ThemeMixin {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vo = ref.watch(emailAuthStateProvider);

    return Visibility(
      visible: vo.error != null,
      child: TopLeftAlign(
        child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text(
              vo.error?.message ?? "",
              style: TextStyle(
                color: getColorScheme(context).error
              ),
              textAlign: TextAlign.start,
            )
        ),
      ),
    );
  }
}

class _AuthCodeReSendLinkWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vo = ref.watch(emailAuthStateProvider);

    return Column(
      children: [
        Visibility(
            visible: vo.error == null,
            child: Margin.vertical(15)
        ),
        TopLeftAlign(
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      Strings.reSendAuthCode,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            )
        ),
      ],
    );
  }
}

class _AuthCodeInputWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(emailAuthStateProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _generateForms(
        length: AuthEmailPage.authCodeLength,
        notifier: ref.read(emailAuthStateProvider.notifier),
      ),
    );
  }

  List<Widget> _generateForms({
    required int length,
    required EmailAuthStateNotifier notifier,
  }) {
    return List.generate(
        length,
        (index) => _SingleDigitTextForm(
          idx: index,
          notifier: notifier,
        )
    );
  }
}

class _SingleDigitTextForm extends StatefulWidget {
  final int idx;
  final EmailAuthStateNotifier notifier;

  const _SingleDigitTextForm({required this.idx, required this.notifier});

  @override
  State<StatefulWidget> createState() => _SingleDigitTextState();
}

class _SingleDigitTextState extends State<_SingleDigitTextForm>
    with ThemeMixin {
  late final TextEditingController _controller;
  final focusNode = FocusNode();
  int get idx => widget.idx;
  bool get isFirst => idx == 0;
  bool get isLast => idx == (AuthEmailPage.authCodeLength - 1);
  EmailAuthStateNotifier get _notifier => widget.notifier;

  @override
  void initState() {
    _controller = TextEditingController();
    focusNode.onKeyEvent = (_, e) {
      if (e.runtimeType == KeyDownEvent) {
        onKeyDown(e);
      }
      return KeyEventResult.handled;
    };

    super.initState();
  }

  onKeyDown(KeyEvent e) {
    final digit = StringWrapper(e.character);
    final label = StringWrapper(e.logicalKey.keyLabel);

    if (digit.isNotNullOrEmpty()) {
      _controller.text = digit.value!;
      if (!isLast) {
        focusNode.nextFocus();
      }
      Future(() {
        _notifier.put(idx, _controller.text);
      });
    } else if (label.contains("backspace", ignoreCase: true)) {
      _controller.clear();
      Future(() {
        _notifier.clear(idx);
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    if (isFirst) {
      _notifier.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            counterText: '', // カウンターを非表示にする
            counterStyle: const TextStyle(fontSize: 0),
            errorText: _notifier.hasError() ? "" : null,
            errorStyle: const TextStyle(fontSize: 0)),
        style: TextStyle(
          fontSize: 22,
          color: _notifier.hasError() ? getColorScheme(context).error : null,
        ),
        maxLength: 1,
        showCursor: false,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        focusNode: focusNode,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        autofocus: isFirst ? true : false,
      ),
    );
  }
}

class _AuthButtonWidget extends ConsumerWidget with UIMixin {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(emailAuthStateProvider);
    final vo = ref.read(emailAuthStateProvider);
    final notifier = ref.read(emailAuthStateProvider.notifier);

    return OutlinedProgressButton(
        state: () {
          switch(vo.authState) {
            case EmailAuthState.idle:
              return ButtonState.idle;
            case EmailAuthState.authenticating:
              return ButtonState.loading;
            case EmailAuthState.authSuccess:
              return ButtonState.success;
            case EmailAuthState.authFailed:
              return ButtonState.failed;
          }
        }(),
        onPressed: notifier.isFilled() && !notifier.hasError()
            ? () {
                unFocus(context);
                // 認証処理
                notifier.authenticateEmail(
                    onSuccess: (res) {
                      _navigateToUserRegistrationPage(context, res.email);
                    },
                    onFailure: (error) {
                      // NOP
                    }
                );
              }
            : null,
        child: const Text(Strings.authenticate)
    );
  }

  _navigateToUserRegistrationPage(BuildContext context, String email) {
    Future.delayed(const Duration(milliseconds: 300), () {
      final user = UserFormData.init(email: email);
      Navigator.of(context).pushNamed(UserRegistrationPage.path, arguments: user);
    });
  }
}
