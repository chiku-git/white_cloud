import 'package:white_cloud/importer.dart';

class UserRegistrationPage extends ConsumerWidget with UIMixin {
  static const String path = "/user/register";
  final UserForm user;

  const UserRegistrationPage({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() {
      ref.read(userFormProvider.notifier).updateUser(user: user);
    });

    return SafeArea(
        child: PopScope(
          canPop: false,
          onPopInvoked: (_) async {
            final state = await showDialog<ConfirmDialogState>(
                context: context, 
                builder: (context) {
                  return const ConfirmDialog(
                      content: Strings.confirmAbortRegistration,
                      options: {
                        Strings.no : ConfirmDialogState.negative,
                        Strings.yes: ConfirmDialogState.positive,
                      }
                  );
                }
            );

            if (state?.isPositive == true && context.mounted) {
              Navigator.of(context).popUntil((route) => route.isFirst);
            }
          },
          child: Scaffold(
            appBar: AppBar(),
            body: const _Body(),
          ),
        )
    );
  }
}

class _Body extends StatelessWidget with ThemeMixin {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final colorScheme = getColorScheme(context);
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ListView(
          children: [
            const Text(
              Strings.noteUserRegistration,
              style: TextStyle(fontSize: 16),
            ),
            Margin.vertical(20),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
              decoration: BoxDecoration(
                border: Border.all(
                  color: colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: _BodyContent()
            ),
            Margin.vertical(20),
            const BottomRightAlign(
                child: _RegisterUserButtonWidget()
            )
          ],
        ));
  }
}

class _BodyContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Margin.vertical(20),
        const _UserImageWidget(),
        Margin.vertical(40),
        const _UserNameInputWidget(),
        Margin.vertical(20),
        _PasswordInputWidget(),
        Margin.vertical(40),
        const _BioInputWidget(),
      ],
    );
  }
}

class _UserNameInputWidget extends ConsumerWidget {
  const _UserNameInputWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(userFormProvider);

    return TextFormField(
      initialValue: form.userName,
      decoration: const InputDecoration(
        labelText: Strings.userName,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.text,
      maxLength: 20,
      maxLines: 1,
      onChanged: (userName) {
        ref.read(userFormProvider.notifier).update(userName: userName);
      },
      textInputAction: TextInputAction.next,
    );
  }
}

class _PasswordInputWidget extends ConsumerWidget {
  late final ValueNotifier<bool> _passwordVisibilityNotifier;
  late final PasswordValidator _passwordValidator;
  _PasswordInputWidget() {
    _passwordVisibilityNotifier = ValueNotifier(true);
    _passwordValidator = PasswordValidator();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListenableBuilder(
      listenable: _passwordVisibilityNotifier,
      builder: (BuildContext context, Widget? child) {
        return TextFormField(
          decoration: InputDecoration(
              labelText: Strings.password,
              border: const OutlineInputBorder(),
              errorMaxLines: 4,
              suffixIcon: IconButton(
                  onPressed: () {
                    bool isVisible = _passwordVisibilityNotifier.value;
                    _passwordVisibilityNotifier.value = !isVisible;
                  },
                  icon: _passwordVisibilityNotifier.value
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility)
              )
          ),
          keyboardType: TextInputType.visiblePassword,
          maxLines: 1,
          obscureText: _passwordVisibilityNotifier.value,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.always,
          onChanged: (password) {
            ref.read(userFormProvider.notifier).update(password: password);
          },
          validator: (password) {
            switch(_passwordValidator.validate(password)) {
              case PasswordValidateState.tooShort:
                return Strings.passwordErrorTooShort;
              case PasswordValidateState.invalidFormat:
                return Strings.passwordErrorInvalidFormat;
              default:
                return null;
            }
          },
        );
      },
    );
  }
}

class _BioInputWidget extends ConsumerWidget {
  const _BioInputWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(userFormProvider);

    return TextFormField(
      initialValue: form.bio,
      decoration: const InputDecoration(
        labelText: Strings.introMessage,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.text,
      maxLength: 100,
      onChanged: (bio) {
        ref.read(userFormProvider.notifier).update(bio: bio);
      },
      textInputAction: TextInputAction.done,
    );
  }
}

class _UserImageWidget extends ConsumerWidget with ThemeMixin {
  const _UserImageWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = getColorScheme(context);
    final form = ref.watch(userFormProvider);
    final image = form.image != null && form.image!.bytes != null
        ? Image.memory(form.image!.bytes!, fit: BoxFit.cover,)
        : const PlaceHolderPersonImage();
    final photoFrameSize = MediaQuery.of(context).size.width * 0.35;

    return Stack(
      children: [
        TappableCirclePhotoFrame(
            image: image,
            diameter: photoFrameSize,
            borderWidth: 3.0,
            onTap: () {
              _onTapPhotoFrame(context, ref);
            }
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: TappableCirclePhotoFrame(
              image: Padding(
                padding: const EdgeInsets.all(8),
                child: SVGLoader(
                    fileName: 'camera_icon',
                    colorFilter: ColorFilter.mode(
                        colorScheme.primary,
                        BlendMode.srcIn
                    )
                ).load(),
              ),
              diameter: photoFrameSize * 0.35,
              borderWidth: 3.0,
              color: colorScheme.onTertiary,
              onTap: () {
                _onTapPhotoFrame(context, ref);
              }
          ),
        ),
      ],
    );
  }

  _onTapPhotoFrame(BuildContext context, WidgetRef ref) {
    Future(() {
      ImageCropPage.pickAndTrim(Navigator.of(context)).then((image) => {
        if (image != null && image.bytes != null) {
          ref.read(userFormProvider.notifier).update(image: image),
        }
      });
    });
  }
}

class _RegisterUserButtonWidget extends ConsumerWidget with UIMixin {
  const _RegisterUserButtonWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiState = ref.watch(apiProvider);
    final form = ref.watch(userFormProvider);

    return OutlinedProgressButton(
        state: ButtonState.fromApiState(apiState),
        onPressed: form.isValid ? () {
          hideBanner(context);
          ref.read(apiProvider.notifier).registerUser(
              form: form,
              onSuccess: (res) {
                DBRepository().saveUserFromJson(json: res.user.toJson());
                _navigateToDashBoardPage(context, ref);
              },
              onFailure: (err) {
                ScaffoldMessenger.of(context).showMaterialBanner(
                    ErrorBanner(
                        context: context,
                        message: err.message,
                    )
                );
              }
          );
        } : null,
        child: const Text(Strings.register)
    );
  }

  _navigateToDashBoardPage(BuildContext context, WidgetRef ref) {
    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.of(context).pushNamed(DashBoardPage.path);
    });
  }
}
