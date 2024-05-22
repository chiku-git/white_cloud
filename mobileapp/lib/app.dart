import 'importer.dart';

class WhiteCloudApp extends StatelessWidget {
  const WhiteCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      onGenerateRoute: (settings) => AppRouter.of(settings: settings).route,
      initialRoute: TopPage.path,
    );
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