import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class FollowPage extends StatelessWidget {
  static const String path = "/user/follow/";
  final FollowPageIvo ivo;
  const FollowPage({super.key, required this.ivo});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        followPageViewModelProvider.overrideWith((ref) {
          return FollowViewModelNotifier(
              FollowPageViewModel(
                user: ivo.user,
                initialPageIndex: ivo.initialPageIndex,
              )
          );
        })
      ],
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(ivo.user.userName),
            ),
            body: _Body(),
          )
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  final pages = [
    const _FollowingPage(),
    const _FollowersPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(followPageViewModelProvider);

    return DefaultTabController(
        length: pages.length,
        initialIndex: vm.initialPageIndex,
        child: Scaffold(
          appBar: TabBar(
            tabs: pages.map((page) => Tab(text: page.title)).toList(),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          body: TabBarView(
            children: pages,
          ),
        )
    );
  }
}

// =========================================
// Page(View)
// =========================================
abstract class _FollowListPage extends ConsumerStatefulWidget {
  final String title;
  const _FollowListPage(this.title);
}

class _FollowersPage extends _FollowListPage {
  const _FollowersPage(): super(Strings.followers);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FollowersState();
}

class _FollowingPage extends _FollowListPage {
  const _FollowingPage(): super(Strings.followings);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FollowingState();
}

// =========================================
// Page(State)
// =========================================
abstract class _FollowBaseState<T extends _FollowListPage> extends ConsumerState<T>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final PagingController<int, UserMiniInfo> controller;
  UserInfo get user => ref.read(followPageViewModelProvider).user;

  @override
  void initState() {
    super.initState();
    controller = PagingController(firstPageKey: 0);
    controller.addPageRequestListener((page) async {
      (await fetch(user.id, page)).when(
          onSuccess: (res) {
            final followList = getFollowList(res);
            if (followList.isNotEmpty) {
              controller.appendPage(followList, page + 1);
            } else {
              controller.appendLastPage([]);
            }
          },
          onFailure: (err) {
            controller.error = err;
          },
          onCancel: () { /* NOP */ }
      );
    });
    Future(() {
      controller
        ..refresh()
        ..notifyPageRequestListeners(controller.firstPageKey);
    });
  }

  @override
  dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return PagedListView(
      pagingController: controller,
      builderDelegate: PagedChildBuilderDelegate<UserMiniInfo>(
          itemBuilder: (context, item, index) => UserInfoTile(user: item),
          firstPageErrorIndicatorBuilder: (context) {
            return _ErrorResultPage();
          },
          newPageErrorIndicatorBuilder: (context) {
            return _ErrorResultPage();
          },
          noItemsFoundIndicatorBuilder: (context) {
            return _NoItemPage(text: getNoFollowListMessage());
          }
      ),
    );
  }

  Future<ApiResult<dynamic>> fetch(String userId, int page);
  List<UserMiniInfo> getFollowList(dynamic res);
  String getNoFollowListMessage();
}

class _ErrorResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(Strings.errorHasOccurred),
    );
  }
}

class _NoItemPage extends StatelessWidget {
  final String text;
  const _NoItemPage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}

class _FollowersState extends _FollowBaseState<_FollowersPage> {
  @override
  Future<ApiResult> fetch(String userId, int page)
    => ApiRepository().fetchFollowers(userId: userId, page: page);

  @override
  List<UserMiniInfo> getFollowList(res) {
    if (res is FetchFollowersResponse) {
      return res.followers;
    } else {
      return List.empty();
    }
  }

  @override
  String getNoFollowListMessage() => Strings.hasNotFollowers;
}

class _FollowingState extends _FollowBaseState<_FollowingPage> {
  @override
  Future<ApiResult> fetch(String userId, int page)
    => ApiRepository().fetchFollowing(userId: userId, page: page);

  @override
  List<UserMiniInfo> getFollowList(res) {
    if (res is FetchFollowingResponse) {
      return res.following;
    } else {
      return List.empty();
    }
  }

  @override
  String getNoFollowListMessage() => Strings.hasNotFollowings;
}