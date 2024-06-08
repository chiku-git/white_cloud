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
          const BottomRightAlign(
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
    final vo = ref.watch(emailVOProvider);

    return TextFormField(
      decoration: InputDecoration(
          labelText: Strings.emailAddress,
          border: const OutlineInputBorder(),
          suffixIcon: vo.state.hasError
              ? const Icon(Icons.error)
              : null,
          errorMaxLines: 3,
          errorText: _getErrorMessage(vo)
      ),
      autovalidateMode: AutovalidateMode.always,
      keyboardType: TextInputType.emailAddress,
      onChanged: (email) {
        ref.read(emailVOProvider.notifier).validate(email: email);
      },
    );
  }

  String? _getErrorMessage(EmailVO vo) {
    switch(vo.state) {
      case EmailState.empty:
        // 空
        return null;
      case EmailState.invalidFormat:
        // 無効なメールアドレスフォーマット
        return Strings.inputValidEmailAddress;
      case EmailState.invalidEmail:
        // 無効なメールアドレス（認証コード送信APIでエラーとなった場合）
        return vo.sendAuthCodeError?.message;
      case EmailState.valid:
        // 正常なメールアドレス
        return null;
      default:
        return null;
    }
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vo = ref.watch(emailVOProvider);
    return OutlinedButton(
        onPressed: vo.state.isValid ? () {
          ref.read(emailVOProvider.notifier).sendAuthCode(
              onSuccess: (res) {
                Navigator.pushNamed(context, AuthEmailPage.path);
              },
              onFailure: (error) {
                // NOP
              }
          );
        } : null,
        child: const Text(Strings.sendEmail)
    );
  }
}