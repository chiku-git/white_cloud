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
    final addressState = ref.watch(emailAddressStateProvider);

    return TextFormField(
      decoration: InputDecoration(
          labelText: Strings.emailAddress,
          border: const OutlineInputBorder(),
          suffixIcon: addressState.hasError
              ? const Icon(Icons.error)
              : null
      ),
      autovalidateMode: AutovalidateMode.always,
      keyboardType: TextInputType.emailAddress,
      validator: (address) {
        if (address == null) return null;

        final state = EmailAddressValidator(target: address).validate();

        // (!) 非同期で更新しないとエラーになる
        Future(() {
          ref.read(emailAddressStateProvider.notifier).update(state);
        });

        switch(state) {
          case EmailAddressState.empty:
            // 空
            return null;
          case EmailAddressState.invalid:
            // 無効なメールアドレス
            return Strings.inputValidEmailAddress;
          case EmailAddressState.valid:
            // 正常なメールアドレス
            return null;
        }
      },
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressState = ref.watch(emailAddressStateProvider);

    return OutlinedButton(
        onPressed: addressState.isValid ? () {
          Navigator.pushNamed(context, AuthEmailPage.path);
        } : null,
        child: const Text(Strings.sendEmail)
    );
  }
}