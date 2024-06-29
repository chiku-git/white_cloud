import 'package:white_cloud/importer.dart';

const double _maxProgress = 98;

class TosPage extends StatelessWidget {
  static const path = '/tos/';

  const TosPage({super.key});

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
      padding: const EdgeInsets.only(
          left: 10,
          top: 0,
          right: 10,
          bottom: 0
      ),
      child: Stack(
        children: [
          const Column(
            children: [
              _TosContent(),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
              child: const _AcceptTosLayout()
          ),
        ],
      ),
    );
  }
}

class _TosContent extends ConsumerWidget with ThemeMixin {
  const _TosContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = isDarkTheme(context);

    return Flexible(
      flex: 1,
      child: WebView(
        url: Config.termsUrl,
        callback: NavigationCallback(
          onPageFinished: (ignore, interface) {
            ref.read(progressProvider.notifier).init();
            final scripts = [
              "page_scrolling_listener",
              "append_br"
            ];
            if(isDark) {
              scripts.addAll([
                "change_body_background_color",
                "change_body_text_color"
              ]);
            }

            interface.runMultipleJsFile(scripts);
          }
        ),
        channels: [
          JsMessageChannel(
              name: 'scrolling_progress_channel',
              onMessageReceived: (message) {
                try {
                  final progress = double.parse(message.message);
                  if ((85 <= progress && progress <= 97) || progress >= _maxProgress) {
                    ref.read(progressProvider.notifier).update(progress);
                  }
                } catch(error) {
                  // NOP
                }
              }
          )
        ],
      ),
    );
  }
}

class _AcceptTosLayout extends ConsumerWidget with ThemeMixin {
  const _AcceptTosLayout();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(progressProvider);
    final themeColor = getColorScheme(context);

    return Visibility(
      visible: progress >= _maxProgress ? true : false,
      child: Container(
        height: 75,
        color: themeColor.surface.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        themeColor.surface
                    )
                  ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(Strings.disAgree)
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            themeColor.surface
                        )
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SendEmailPage.path);
                    },
                    child: const Text(Strings.agree)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}