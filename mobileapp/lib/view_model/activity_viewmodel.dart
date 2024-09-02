import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class ActivityViewmodel {
  ActivityPageModel model;
  late final PagingController<int, PostDigest> controller;

  ActivityViewmodel({required this.model}) {
    _setUpPagingController();
  }

  _setUpPagingController() {
    controller = PagingController(firstPageKey: 0);
    controller
      ..refresh()
      ..addPageRequestListener(_onRequestPageChanging);
  }

  _onRequestPageChanging(int page) async {
    (await fetchResult(page: page)).when(
        onSuccess: (res) {
          final digests = res.digests;
          if (digests.isNotEmpty) {
            DBRepository().add(digests);
            controller.appendPage(digests, page + 1);
          } else {
            controller.appendLastPage([]);
          }
        },
        onFailure: (err) {
          controller.error = err;
        },
        onCancel: () {
          // NOP
        }
    );
  }

  Future<ApiResult<GetFavoritesResponse>> fetchResult({required int page}) {
    return ApiRepository().getFavorites(page: page);
  }

  ActivityViewmodel copyWith({required ActivityPageModel model}) {
    return ActivityViewmodel(model: model);
  }
}

enum ActivityType {
  favorite,
  reply,
}