import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

@immutable
class DigestViewModel {
  late final PagingController<int, PostDigest> _controller;
  PagingController<int, PostDigest> get controller => _controller;
  ErrorResponse get pagingError => _controller.error;

  setUpController() {
    _controller = PagingController(firstPageKey: 0);
    _controller
      ..refresh()
      ..addPageRequestListener(_onRequestPageChanging);
  }

  retryRequestNewPage() => _controller.retryLastFailedRequest();

  _onRequestPageChanging(int page) async {
    (await ApiRepository().getDigestPosts(page: page)).when(
        onSuccess: (res) {
          final digests = res.digests;
          if (digests.isNotEmpty) {
            DBRepository().add(digests);
            _controller.appendPage(digests, page + 1);
          } else {
            _controller.appendLastPage([]);
          }
        },
        onFailure: (err) {
          _controller.error = err;
        },
        onCancel: () {
          // NOP
        }
    );
  }

  dispose() {
    _controller.dispose();
  }
}