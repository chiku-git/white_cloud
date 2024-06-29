import 'package:white_cloud/importer.dart';

mixin class UIMixin {
  unFocus(BuildContext context) {
    final FocusScopeNode currentScope = FocusScope.of(context);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  showErrorBanner(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      ErrorBanner(
        context: context,
        message: message,
      ),
    );
  }

  hideBanner(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }
}
