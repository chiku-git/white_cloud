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
        return _getDefaultRouter(page: const AuthEmailPage());
      case UserRegistrationPage.path:
        return _getDefaultRouter(page: const UserRegistrationPage());
      case PhotoCropPage.path:
        final photo = settings.arguments as File;
        return _getDefaultRouter(page: PhotoCropPage(photo: photo));
      case DashBoardPage.path:
        return _getDefaultRouter(page: const DashBoardPage());
      default:
        return null;
    }
  }

  _getDefaultRouter({required Widget page})
    => MaterialPageRoute(builder: (context) { return page; },);
}