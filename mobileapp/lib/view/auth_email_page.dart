import 'package:flutter/services.dart';
import 'package:white_cloud/importer.dart';

class AuthEmailPage extends ConsumerWidget {
  static const int authCodeLength = 4;
  static const path = '/email/auth/';
  final String email;

  const AuthEmailPage({super.key, required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() {
      ref.read(emailAuthFormProvider.notifier).update(email: email);
    });

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
    final form = ref.watch(emailAuthFormProvider);

    return Visibility(
      visible: form.hasError,
      child: TopLeftAlign(
        child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text(
              form.error?.message ?? "",
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
    return Column(
      children: [
        Margin.vertical(15),
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
    ref.watch(emailAuthFormProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _generateForms(
        length: AuthEmailPage.authCodeLength,
        notifier: ref.read(emailAuthFormProvider.notifier),
      ),
    );
  }

  List<Widget> _generateForms({
    required int length,
    required EmailAuthFormNotifier notifier,
  }) {
    return List.generate(
        length,
        (index) => _SingleDigitTextForm(idx: index)
    );
  }
}

class _SingleDigitTextForm extends StatefulWidget {
  final int idx;
  const _SingleDigitTextForm({required this.idx});

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
  WidgetRef? _ref;

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
    final notifier = _ref?.read(emailAuthFormProvider.notifier);

    if (digit.isNotNullOrEmpty()) {
      _controller.text = digit.value!;
      if (!isLast) {
        focusNode.nextFocus();
      }
      Future(() {
        notifier?.put(idx, _controller.text);
      });
    } else if (label.contains("backspace", ignoreCase: true)) {
      _controller.clear();
      Future(() {
        notifier?.clear(idx);
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        _ref = ref;
        final notifier = ref.watch(emailAuthFormProvider.notifier);
        return SizedBox(
          width: 50,
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                counterText: '', // カウンターを非表示にする
                counterStyle: const TextStyle(fontSize: 0),
                errorText: notifier.hasError ? "" : null,
                errorStyle: const TextStyle(fontSize: 0)),
            style: TextStyle(
              fontSize: 22,
              color: notifier.hasError ? getColorScheme(context).error : null,
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
    );
  }
}

class _AuthButtonWidget extends ConsumerWidget with UIMixin {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(emailAuthFormProvider);
    final apiState = ref.watch(apiProvider);

    return OutlinedProgressButton(
        state: ButtonState.fromApiState(apiState),
        onPressed: form.isFilled && !form.hasError
            ? () {
                unFocus(context);
                // 認証処理
                ref.read(apiProvider.notifier).authenticateEmail(
                    form: form,
                    onSuccess: (res) {
                      _navigateToUserRegistrationPage(context, ref, form.email);
                    },
                    onFailure: (err) {
                      ref.read(emailAuthFormProvider.notifier).update(error: err);
                    },
                );
              }
            : null,
        child: const Text(Strings.authenticate)
    );
  }

  _navigateToUserRegistrationPage(BuildContext context, WidgetRef ref, String email) {
    Future.delayed(const Duration(milliseconds: 300), () {
      final form = UserForm.init(email: email);
      Navigator.of(context).pushNamed(UserRegistrationPage.path, arguments: form);
    });
  }
}
