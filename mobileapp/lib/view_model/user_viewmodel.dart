import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class UserViewmodel {
  final UserInfo user;
  final bool isMe;
  late final PagingController<int, PostDigest> controller;

  UserViewmodel({required this.user, required this.isMe}) {
    _setUpPagingController();
  }

  _setUpPagingController() {
    controller = PagingController(firstPageKey: 0);
    controller
      ..refresh()
      ..addPageRequestListener(_onRequestPageChanging);
  }

  _onRequestPageChanging(int page) async {
    (await ApiRepository().getUserDigests(page: page, user: user)).when(
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
}