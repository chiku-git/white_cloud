import 'package:white_cloud/importer.dart';

class AppRouter {
  static AppRouter of({required RouteSettings settings}) {
    return AppRouter._(settings);
  }
  AppRouter._(this.settings);

  final RouteSettings settings;

  Route<dynamic>? get route => _switchRoute();

  Route<dynamic>? _switchRoute() {
    switch(settings.name) {
      case TopPage.path:
        return _getDefaultRouter(page: const TopPage());
      case TosPage.path:
        return _getDefaultRouter(page: const TosPage());
      case SendEmailPage.path:
        return _getDefaultRouter(page: const SendEmailPage());
      case AuthEmailPage.path:
        final email = settings.arguments as String;
        return _getDefaultRouter(page: AuthEmailPage(email: email,));
      case UserRegistrationPage.path:
        final user = settings.arguments as UserFormData;
        return _getDefaultRouter(page: UserRegistrationPage(user: user,));
      case ImageCropPage.path:
        final image = settings.arguments as File;
        return _getDefaultRouter(page: ImageCropPage(image: image));
      case DashBoardPage.path:
        return _getDefaultRouter(page: const DashBoardPage());
      default:
        return null;
    }
  }

  _getDefaultRouter({required Widget page})
    => MaterialPageRoute(builder: (context) { return page; },);
}