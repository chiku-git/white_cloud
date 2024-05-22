import 'package:white_cloud/component/confirm_dialog.dart';
import 'package:white_cloud/importer.dart';

class UserRegistrationPage extends StatelessWidget {
  static const String path = "/user/register";

  const UserRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: RegisterUserButtonWidget()
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
        const PhotoWidget(),
        Margin.vertical(40),
        TextFieldWidget(
          label: Strings.userName,
          maxLength: 20,
          maxLines: 1,
          onChanged: (text) {
            ref.read(registerUserProvider.notifier).update(name: text);
          },
          required: true,
          inputAction: TextInputAction.next,
        ),
        Margin.vertical(20),
        TextFieldWidget(
          label: Strings.introMessage,
          maxLength: 100,
          onChanged: (text) {
            ref.read(registerUserProvider.notifier).update(note: text);
          },
        ),
      ],
    );
  }
}

class PhotoWidget extends ConsumerWidget with ThemeMixin {
  const PhotoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = getColorScheme(context);
    final user = ref.watch(registerUserProvider);
    final photo = user.photo != null
        ? Image.memory(user.photo!.bytes, fit: BoxFit.cover,)
        : const PlaceHolderPersonImage();
    final photoFrameSize = MediaQuery.of(context).size.width * 0.35;

    return Stack(
      children: [
        TappableCirclePhotoFrame(
            image: photo,
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
      PhotoCropPage.pickAndTrim(Navigator.of(context)).then((bytes) => {
        if (bytes != null) {
          ref.read(registerUserProvider.notifier).update(photo: bytes),
        }
      });
    });
  }
}

class TextFieldWidget extends ConsumerWidget {
  final String label;
  final int maxLength;
  final int? maxLines;
  final Function(String) onChanged;
  final bool required;
  final TextInputAction inputAction;
  const TextFieldWidget({
    super.key,
    required this.label,
    required this.maxLength,
    this.maxLines,
    required this.onChanged,
    this.required = false,
    this.inputAction = TextInputAction.done
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label + (required ? Strings.aster : ""),
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.text,
      maxLength: maxLength,
      maxLines: maxLines,
      onChanged: onChanged,
      textInputAction: inputAction,
    );
  }
}

class RegisterUserButtonWidget extends ConsumerWidget {
  const RegisterUserButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(registerUserProvider);

    return OutlinedButton(
        onPressed: user.isValid ? () {
          Navigator.of(context).pushNamed(DashBoardPage.path);
        } : null,
        child: const Text(Strings.register)
    );
  }
}
