import 'package:white_cloud/importer.dart';

enum WebViewState {
  init,
  inProgress,
  success,
  error,
}

class WebViewStateNotifier extends ValueNotifier<WebViewState> {
  WebResourceError? _errorInfo;
  WebViewStateNotifier(): super(WebViewState.init);

  WebViewState get state => value;

  clear() {
    _errorInfo = null;
    _updateState(WebViewState.init);
  }

  onProgress() => _updateState(WebViewState.inProgress);

  onSuccess() => _updateState(WebViewState.success);

  onError(WebResourceError error) {
    _errorInfo = error;
    _updateState(WebViewState.error);
  }

  onComplete() {
    if (_errorInfo != null) {
      onError(_errorInfo!);
    } else {
      onSuccess();
    }
  }

  _updateState(WebViewState state) {
    value = state;
    notifyListeners();
  }
}