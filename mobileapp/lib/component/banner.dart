import 'package:white_cloud/importer.dart';

class ErrorBanner extends MaterialBanner {
  ErrorBanner({
    super.key,
    required BuildContext context,
    required String message,
  }): super(
      content: Text(
        message,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onError
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.clear,
            color: Theme.of(context).colorScheme.onError,
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
          },
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.error.withOpacity(0.9),
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      elevation: 1,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10)
  );
}