import 'package:white_cloud/importer.dart';

class SendEmailPage extends StatelessWidget with ThemeMixin {
  static const path = '/email/send/';
  const SendEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ListView(
        children: [
          const Text(
            Strings.sendEmailAddressPageTitle,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16
            ),
          ),
          Margin.vertical(30),
          const _EmailFormField(),
          Margin.vertical(30),
          BottomRightAlign(
              child: _SubmitButton()
          )
        ],
      ),
    );
  }
}

class _EmailFormField extends ConsumerWidget {
  const _EmailFormField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(emailSendFormProvider);

    return TextFormField(
      decoration: InputDecoration(
          labelText: Strings.emailAddress,
          border: const OutlineInputBorder(),
          suffixIcon: form.state.hasError
              ? const Icon(Icons.error)
              : null,
          errorMaxLines: 3,
          errorText: _getErrorMessage(form)
      ),
      autovalidateMode: AutovalidateMode.always,
      keyboardType: TextInputType.emailAddress,
      onChanged: (email) {
        ref.read(emailSendFormProvider.notifier).validate(email: email);
      },
    );
  }

  String? _getErrorMessage(EmailSendForm form) {
    switch(form.state) {
      case EmailState.empty:
        // 空
        return null;
      case EmailState.invalidFormat:
        // 無効なメールアドレスフォーマット
        return Strings.inputValidEmailAddress;
      case EmailState.invalidEmail:
      case EmailState.apiError:
        // 無効なメールアドレス（認証コード送信APIでエラーとなった場合）
        return form.sendAuthCodeError?.message;
      case EmailState.valid:
        // 正常なメールアドレス
        return null;
      default:
        return null;
    }
  }
}

class _SubmitButton extends ConsumerWidget with UIMixin {
  _SubmitButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(emailSendFormProvider);
    final apiState = ref.watch(apiProvider);

    return OutlinedProgressButton(
        state: ButtonState.fromApiState(apiState),
        onPressed: form.state.isValid ? () {
          unFocus(context);
          ref.read(apiProvider.notifier).sendAuthCode(
              form: form,
              onSuccess: (res) {
                _navigateToAuthEmail(ref, context, res.email);
              },
              onFailure: (err) {
                ref.read(emailSendFormProvider.notifier).notifyApiError(err);
              },
          );
        } : null,
        child: const Text(Strings.sendEmail)
    );
  }

  /// メールアドレスの認証画面に遷移する
  _navigateToAuthEmail(WidgetRef ref, BuildContext context, String email) {
    Future.delayed(const Duration(milliseconds: 300), () {
      ref.read(emailSendFormProvider.notifier).update(newState: EmailState.valid);
      ref.read(apiProvider.notifier).refresh();
      Navigator.pushNamed(context, AuthEmailPage.path, arguments: email);
    });
  }
}