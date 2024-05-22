import 'package:white_cloud/importer.dart';

abstract class WebViewInterface {
  /// jsファイルの内容を実行する
  runJsFile(String file);
  /// 複数のjsファイルの内容を実行する
  runMultipleJsFile(List<String> file);
  /// webviewをリロードする
  reload();
}

class NavigationCallback {
  /// 進捗に更新があった場合に呼ばれる
  final Function(int progress, WebViewInterface interface)? onProgress;
  /// ページの読み込みが開始されたときに呼ばれる
  final Function(String url, WebViewInterface interface)? onPageStarted;
  /// ページの読み込みが完了したときに呼ばれる
  final Function(String url, WebViewInterface interface)? onPageFinished;
  /// エラーが発生したときに呼ばれる
  final Function(WebResourceError error, WebViewInterface interface)? onWebResourceError;

  NavigationCallback({
    this.onProgress,
    this.onPageStarted,
    this.onPageFinished,
    this.onWebResourceError,
  });
}

class WebViewModel implements WebViewInterface {
  /// コントローラー
  late final WebViewController _controller;
  /// エラー通知用のnotifier
  late final WebViewStateNotifier stateNotifier;
  /// コントローラー（外部参照用）
  WebViewController get controller => _controller;
  /// ページロード完了フラグ
  bool isLoaded = false;

  WebViewModel({
    required String url,
    required NavigationDelegate delegate,
    List<JsMessageChannel>? channels}) {
    _initController(url, delegate, channels ?? []);
    stateNotifier = WebViewStateNotifier();
  }

  /// コントローラーを初期化する
  _initController(
      String url,
      NavigationDelegate delegate,
      List<JsMessageChannel> channels) {
    // コントローラー生成
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(delegate)
      ..enableZoom(true)
      ..loadRequest(Uri.parse(url));

    // postMessage用のチャンネル生成
    for (var channel in channels) {
      _controller.addJavaScriptChannel(
          channel.name,
          onMessageReceived: channel.onMessageReceived);
    }
  }

  /// ページ読み込み中にエラーが発生したときの処理
  onWebResourceError(WebResourceError error) {
    if (error.isForMainFrame == true) {
      stateNotifier.onError(error);
    }
  }

  /// ページの読み込みが開始したときの処理
  onPageStarted(String url) {
    stateNotifier.onProgress();
  }

  /// ページの読み込みが完了したときの処理
  onPageFinished(String url) {
    isLoaded = true;
    stateNotifier.onComplete();
  }

  @override
  runJsFile(String file) {
    JsLoader(fileName: file).loadThen((js) {
      _controller.runJavaScript(js);
    });
  }

  @override
  runMultipleJsFile(List<String> files) {
    for (final file in files) {
      runJsFile(file);
    }
  }

  @override
  reload() {
    stateNotifier.clear();
    _controller.reload();
  }
}