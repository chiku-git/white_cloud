import 'package:white_cloud/importer.dart';

class LoginPage extends StatelessWidget with ThemeMixin {
  static const path = '/account/login/';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLight = isLightTheme(context);
    final backgroundColor = isLight ? AppColors.lightSkyBlue : null;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
        ),
        body: _Body(),
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _BrandingImageWidget(),
            Margin.vertical(40),
            _InputEmailWidget(),
            Margin.vertical(20),
            _InputPasswordWidget(),
            Margin.vertical(20),
            _LoginButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class _BrandingImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SVGLoader(
        fileName: 'splash_logo',
        width: 130,
        height: 130
    ).load();
  }
}

class _InputEmailWidget extends _LoginFormField {
  @override
  String get label => Strings.emailAddress;

  @override
  bool get obscureText => false;

  @override
  Widget? get suffixIcon => null;

  @override
  TextInputAction get textInputType => TextInputAction.next;

  @override
  onTextChanged(BuildContext context, WidgetRef ref, text) {
    ref.read(loginFormProvider.notifier).update(email: text);
  }
}

class _InputPasswordWidget extends _LoginFormField {
  @override
  String get label => Strings.password;

  @override
  bool get obscureText => passwordVisibilityNotifier.value;

  @override
  TextInputAction get textInputType => TextInputAction.done;

  @override
  Widget? get suffixIcon => IconButton(
      onPressed: () {
        bool isVisible = passwordVisibilityNotifier.value;
        passwordVisibilityNotifier.value = !isVisible;
      },
      icon: passwordVisibilityNotifier.value
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility)
  );

  @override
  onTextChanged(BuildContext context, WidgetRef ref, text) {
    ref.read(loginFormProvider.notifier).update(password: text);
  }
}

abstract class _LoginFormField extends ConsumerWidget with ThemeMixin {
  String get label;
  Widget? get suffixIcon;
  bool get obscureText;
  TextInputAction get textInputType;
  final ValueNotifier<bool> passwordVisibilityNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = isLightTheme(context);
    final colors = getColorScheme(context);

    return ListenableBuilder(
      listenable: passwordVisibilityNotifier,
      builder: (BuildContext context, Widget? child) {
        return TextFormField(
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              labelText: label,
              fillColor: isLight ? colors.onTertiary : null,
              filled: isLight,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: isLight ? colors.tertiary : colors.outline
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isLight ? colors.tertiary : colors.outline,
                    width: 2,
                  )
              ),
            ),
            autovalidateMode: AutovalidateMode.always,
            keyboardType: TextInputType.emailAddress,
            obscureText: obscureText,
            textInputAction: textInputType,
            onChanged: (text) => onTextChanged(context, ref, text)
        );
      },
    );
  }

  onTextChanged(BuildContext context, WidgetRef ref, text);

}

class _LoginButtonWidget extends ConsumerWidget with ThemeMixin, UIMixin {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(loginFormProvider);
    final apiState = ref.watch(apiProvider);
    final colors = getColorScheme(context);
    final isEnabled = form.isValid;
    
    return Row(
      children: [
        Expanded(
          child: RoundedProgressButton(
            state: ButtonState.fromApiState(apiState),
            backgroundColor: colors.tertiary,
            disabledForegroundColor: colors.tertiary.withOpacity(0.2),
            progressColor: colors.onTertiary,
            successColor: colors.onTertiary,
            onPressed: isEnabled ? () {
              unFocus(context);
              hideBanner(context);
              ref.read(apiProvider.notifier).login(
                  email: form.email,
                  password: form.password,
                  onSuccess: (res) {
                    _onSuccessLogin(context, res);
                  },
                  onFailure: (err) {
                    showErrorBanner(context, err.message);
                  }
              );
            } : null,
            child: Text(
              Strings.login,
              style: TextStyle(
                color: isEnabled
                    ? colors.onTertiary
                    : colors.onTertiary.withOpacity(0.6)
              ),
            ),
          ),
        )
      ],
    );
  }

  _onSuccessLogin(BuildContext context, LoginResponse res) {
    DBRepository().saveUserFromJson(json: res.user.toJson());
    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.of(context).pop(true);
    });
  }
}