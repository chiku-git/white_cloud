import 'package:white_cloud/importer.dart';

class TopPage extends StatelessWidget {
  static const path = "/top/";

  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget with ThemeMixin {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageSize = screenWidth * 0.6;

    return Container(
      color: isLightTheme(context)
          ? AppColors.lightSkyBlue
          : getColorScheme(context).surface,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 20
          ),
          child: SizedBox(
            child: Column(
              children: [
                Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SVGLoader(
                            fileName: 'splash_logo',
                            width: imageSize,
                            height: imageSize
                        ).load(),
                      ],
                    )
                ),
                Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _ButtonWidget(
                            onPressed: () {
                              _tryLogin(context);
                            },
                            text: Strings.login),
                        const StackDivider(text: Strings.or,),
                        _ButtonWidget(
                            onPressed: () {
                              Navigator.pushNamed(context, TosPage.path);
                            },
                            text: Strings.createAccount
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _tryLogin(BuildContext context) async {
    final result = await Navigator.pushNamed(context, LoginPage.path);
    if (result == true && context.mounted) {
      Navigator.pushNamed(context, DashBoardPage.path);
    }
  }
}

class StackDivider extends StatelessWidget with ThemeMixin {
  final String text;
  const StackDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final isLight = isLightTheme(context);
    final themeColor = getColorScheme(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Divider(
            color: themeColor.outline,
          ),
          Container(
            color: isLight ? AppColors.lightSkyBlue : themeColor.surface,
            padding: const EdgeInsets.symmetric(
                horizontal: 10
            ),
            child: Text(
                text,
                style: const TextStyle(
                  fontSize: 13
                )
            )
          )
        ],
      ),
    );
  }
}


class _ButtonWidget extends StatelessWidget with ThemeMixin {
  final Function onPressed;
  final String text;

  const _ButtonWidget({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final isLight = isLightTheme(context);
    final themeColor = getColorScheme(context);

    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 0.5,
                  color: themeColor.outline
                ),
                backgroundColor: isLight ? themeColor.surface : null
              ),
              onPressed: () {
                onPressed.call();
              },
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isLight ? themeColor.scrim : themeColor.primary
                ),
              )
          ),
        ),
      ],
    );
  }
}