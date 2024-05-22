import 'package:flutter/services.dart';
import 'package:white_cloud/component/custom_align.dart';
import 'package:white_cloud/importer.dart';

class AuthEmailPage extends StatelessWidget {
  static const int authCodeLength = 4;
  static const path = '/email/auth/';

  const AuthEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: _Body(),
        )
    );
  }
}

class _Body extends StatelessWidget {
  final EmailAddressAuthCodeNotifier notifier =
    EmailAddressAuthCodeNotifier(AuthEmailPage.authCodeLength);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ListView(
        children: [
          const Text(
          Strings.sentAuthCodeByEmail,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 16
          ),),
          Margin.vertical(30),
          _AuthCodeInputWidget(notifier: notifier),
          Margin.vertical(20),
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
                      Text(Strings.reSendAuthCode,
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
          Margin.vertical(30),
          BottomRightAlign(
              child: _AuthButtonWidget(notifier: notifier)
          ),
        ],
      ),
    );
  }
}

class _AuthCodeInputWidget extends StatelessWidget {
  final EmailAddressAuthCodeNotifier notifier;
  const _AuthCodeInputWidget({required this.notifier});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _generateForms(length: AuthEmailPage.authCodeLength),
    );
  }

  List<Widget> _generateForms({required int length}) {
    return List.generate(length, (index) =>
        _SingleDigitTextForm(idx: index, notifier: notifier));
  }
}

class _SingleDigitTextForm extends StatefulWidget {
  final int idx;
  final EmailAddressAuthCodeNotifier notifier;

  const _SingleDigitTextForm({required this.idx, required this.notifier});

  @override
  State<StatefulWidget> createState() => _SingleDigitTextState();
}

class _SingleDigitTextState extends State<_SingleDigitTextForm> {
  late final TextEditingController _controller;
  final focusNode = FocusNode();
  int get idx => widget.idx;
  bool get isFirst => idx == 0;
  bool get isLast => idx == (AuthEmailPage.authCodeLength - 1);
  EmailAddressAuthCodeNotifier get _notifier => widget.notifier;

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
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '', // カウンターを非表示にする
          counterStyle: TextStyle(fontSize: 0),
        ),
        style: const TextStyle(
            fontSize: 22
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

class _AuthButtonWidget extends StatelessWidget {
  final EmailAddressAuthCodeNotifier notifier;
  const _AuthButtonWidget({required this.notifier});

  @override
  Widget build(BuildContext context) {

    return ListenableBuilder(
      listenable: notifier,
      builder: (BuildContext context, Widget? child) {
        return OutlinedButton(
            onPressed: notifier.value.isFilled() ? () {
              // 認証処理
              Navigator.of(context).pushNamed(UserRegistrationPage.path);
            } : null,
            child: const Text(Strings.authenticate)
        );
      },
    );
  }
}

