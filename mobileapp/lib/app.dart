import 'package:white_cloud/infrastructure/database.dart';

import 'importer.dart';

class WhiteCloudApp extends ConsumerWidget {
  WhiteCloudApp({super.key}) {
    Future(() {
      Database().init();
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: Strings.appName,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      onGenerateRoute: (settings) {
        return AppRouter.of(settings: settings).switchRoute();
      },
      initialRoute: TopPage.path,
      navigatorObservers: [
        AppNavigatorObserver()
      ],
    );
  }
}

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    final context = route.navigator?.context;

    if (context != null) {
      // メッセージを非表示にする
      _hideBanner(context);
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    final context = route.navigator?.context;

    if (context != null) {
      // メッセージを非表示にする
      _hideBanner(context);
    }
  }

  _hideBanner(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }
}

class AppTheme {
  static ThemeData get light => _getTheme(isDark: false);
  static ThemeData get dark => _getTheme(isDark: true);

  static ThemeData _getTheme({required bool isDark}) {
    return ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light,
        colorScheme: isDark ? darkColorScheme : lightColorScheme,
        pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder()
              // Android以外は定義しない
            }
        ),
    );
  }
}