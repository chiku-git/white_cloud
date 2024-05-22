import 'package:white_cloud/importer.dart';

class WebView extends StatefulWidget {
  final String url;
  final NavigationCallback? callback;
  final List<JsMessageChannel>? channels;

  const WebView({super.key, required this.url, this.callback, this.channels});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = WebViewModel(
        url: widget.url,
        delegate: NavigationDelegate(
          onProgress: (int progress) {
            widget.callback?.onProgress?.call(progress, _viewModel);
          },
          onPageStarted: (String url) {
            _viewModel.onPageStarted(url);
            widget.callback?.onPageStarted?.call(url, _viewModel);
          },
          onPageFinished: (String url) {
            _viewModel.onPageFinished(url);
            widget.callback?.onPageFinished?.call(url, _viewModel);
          },
          onWebResourceError: (WebResourceError err) {
            _viewModel.onWebResourceError(err);
            widget.callback?.onWebResourceError?.call(err, _viewModel);
          },
        ),
        channels: widget.channels
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_viewModel.isLoaded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _viewModel.reload();
      });
    }

    return ListenableBuilder(
        listenable: _viewModel.stateNotifier,
        builder: (context, child) {
          switch(_viewModel.stateNotifier.state) {
            case WebViewState.init:
            case WebViewState.inProgress:
              return const ProgressWidget();
            case WebViewState.error:
              return _ErrorWidget(viewModel: _viewModel);
            case WebViewState.success:
              return _Content(viewModel: _viewModel);
          }
        }
    );
  }
}

class _Content extends StatelessWidget {
  final WebViewModel viewModel;

  const _Content({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: viewModel.controller);
  }
}


class _ErrorWidget extends StatelessWidget with ThemeMixin {
  final WebViewModel viewModel;

  const _ErrorWidget({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final themeColor = getColorScheme(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(Strings.webviewError,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: themeColor.error
            ),
          ),
          const SizedBox(height: 30,),
          CircleIconButton(
              onPressed: () {
                viewModel.reload();
              },
              child: SVGLoader(
                fileName: 'reload',
                width: 30,
                height: 30,
                colorFilter: ColorFilter.mode(
                    themeColor.primary,
                    BlendMode.srcIn
                )
              ).load()
          )
        ],
      ),
    );
  }
}

