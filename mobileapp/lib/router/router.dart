import 'package:white_cloud/importer.dart';

class AppRouter {
  static AppRouter of({required RouteSettings settings}) {
    return AppRouter._(settings);
  }

  AppRouter._(this.settings);

  final RouteSettings settings;

  Route<dynamic>? switchRoute() {
    switch (settings.name) {
      case TopPage.path:
        return _getDefaultRouter(page: const TopPage());
      case TosPage.path:
        return _getDefaultRouter(page: const TosPage());
      case SendEmailPage.path:
        return _getDefaultRouter(page: const SendEmailPage());
      case AuthEmailPage.path:
        final email = settings.arguments as String;
        return _getDefaultRouter(
            page: AuthEmailPage(
          email: email,
        ));
      case UserRegistrationPage.path:
        final form = settings.arguments as UserForm;
        return _getDefaultRouter(
            page: UserRegistrationPage(
          user: form,
        ));
      case ImageCropPage.path:
        final image = settings.arguments as File;
        return _getDefaultRouter(page: ImageCropPage(image: image));
      case DashBoardPage.path:
        return _getDefaultRouter(page: const DashBoardPage());
      case LoginPage.path:
        return _getSlideAnimRouter(page: const LoginPage());
      case PostPage.path:
        final form = settings.arguments as PostForm;
        return _getSlideAnimRouter(page: PostPage(form: form,));
      default:
        return null;
    }
  }

  _getDefaultRouter({required Widget page}) => MaterialPageRoute(
        builder: (context) {
          return ProviderScope(
            overrides: [
              apiProvider.overrideWith((ref) => ApiStateNotifier()),
            ],
            child: page,
          );
        },
      );

  _getSlideAnimRouter({required Widget page}) => PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return ProviderScope(
            overrides: [
              apiProvider.overrideWith((ref) => ApiStateNotifier()),
            ],
            child: page
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end)
            .chain(CurveTween(curve: Curves.easeInOut));
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
  );
}
