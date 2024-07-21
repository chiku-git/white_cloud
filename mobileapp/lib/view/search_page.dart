import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

// =========================================
// メイン
// =========================================
class SearchPage extends StatelessWidget {
  static const String path = "/search/";

  final List<SearchResultPage> pages = [];

  SearchPage({super.key}) {
    pages.add(const _SearchLatestPostResultPage());
    pages.add(const _SearchUserResultPage());
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        searchFormProvider.overrideWith((ref) {
          final form = SearchForm(keyword: "", page: 0);
          return SearchFormNotifier(form);
        })
      ],
      child: SafeArea(
          child: DefaultTabController(
            length: pages.length,
            child: Scaffold(
              appBar: _SearchBar(
                pages: pages,
              ),
              body: TabBarView(
                children: pages,
              ),
            ),
          )
      ),
    );
  }
}

// =========================================
// 検索バー
// =========================================
/// 検索バー本体
class _SearchBar extends StatelessWidget
    with ThemeMixin
    implements PreferredSizeWidget {
  final List<SearchResultPage> pages;

  _SearchBar({required this.pages});

  @override
  Widget build(BuildContext context) {
    final colors = getColorScheme(context);

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            color: colors.onPrimary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: _SearchBarTextForm(),
        ),
        bottom: TabBar(
          tabs: pages.map((page) => Tab(text: page.title)).toList(),
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

/// 検索バーのテキスト部分のフォーム
class _SearchBarTextForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    final notifier = ref.read(searchFormProvider.notifier);

    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => controller.clear()
        ),
        border: InputBorder.none,
        hintText: Strings.searchInWhiteCloud,
      ),
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (String? keyword) {
        if (keyword?.isNotEmpty == true) {
          notifier.update(keyword: keyword);
        }
      },
    );
  }
}

// =========================================
// 検索結果（View）
// =========================================
/// 検索結果ページの基底クラス
abstract class SearchResultPage extends ConsumerStatefulWidget {
  final String title;
  const SearchResultPage(this.title, {super.key});
}

/// "最近の投稿" 検索結果ページ
class _SearchLatestPostResultPage extends SearchResultPage {
  const _SearchLatestPostResultPage() : super(Strings.latest);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchLatestPostResultState();
}

/// "ユーザー" 検索結果ページ
class _SearchUserResultPage extends SearchResultPage {
  const _SearchUserResultPage() : super(Strings.user);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchUserResultState();
}

/// 初期表示 or ローディングページ
class _FirstPageProgressIndicator extends StatelessWidget {
  final ApiState apiState;
  const _FirstPageProgressIndicator({required this.apiState});

  @override
  Widget build(BuildContext context) {
    if (apiState == ApiState.loading) {
      return const ProgressWidget(size: 50,);
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: Strings.firstSearchPrefixMessage),
                  WidgetSpan(
                    child: Icon(Icons.search),
                  ),
                  TextSpan(text: Strings.firstSearchSuffixMessage),
                ],
              ),
            )
        ),
      );
    }
  }
}

/// 検索結果0件の場合のページ
class _NoItemsFoundIndicator extends StatelessWidget {
  final String keyword;
  const _NoItemsFoundIndicator({required this.keyword});

  @override
  Widget build(BuildContext context) {
    final msg = StringWrapper(Strings.noSearchResults);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Center(
        child: Text(msg.embed(keyword)),
      ),
    );
  }
}

/// 検索エラーの場合のページ
class _SearchErrorPage extends StatelessWidget with ThemeMixin {
  final ErrorResponse error;

  const _SearchErrorPage({required this.error});

  @override
  Widget build(BuildContext context) {
    final colors = getColorScheme(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.error,
                    color: colors.error,
                    size: 18,
                  ),
                ),
                const TextSpan(
                  text: " ",
                ),
                TextSpan(
                    text: error.message,
                    style: TextStyle(
                      color: colors.error,
                    )
                ),
          ],
        ),
      )),
    );
  }
}

// =========================================
// 検索結果（State）
// =========================================
/// 検索ページ基底State
abstract class _SearchResultState<T, V> extends ConsumerState<SearchResultPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  ApiState apiState = ApiState.idle;
  late final PagingController<int, T> controller;
  ApiRepository get api => ApiRepository();

  @override
  void initState() {
    super.initState();
    controller = PagingController(firstPageKey: 0);
    controller.addPageRequestListener((page) async {
      final keyword = ref.read(searchFormProvider).keyword;
      if (keyword.isEmpty) return;

      // 検索開始
      apiState = ApiState.loading;
      (await fetchSearchResults(keyword, page)).when(
          onSuccess: (res) {
            apiState = ApiState.success;
            List<T> results = getSearchResults(res as V);
            if (results.isNotEmpty) {
              controller.appendPage(results, page + 1);
            } else {
              controller.appendLastPage([]);
            }
          },
          onFailure: (err) {
            apiState = ApiState.failure;
            controller.error = err;
          },
          onCancel: () {
            // NOP
          }
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final form = ref.watch(searchFormProvider);
    if (apiState == ApiState.loading) {
      api.cancelAllRequests();
    }

    if (form.keyword.isNotEmpty) {
      controller
        ..refresh()
        ..notifyPageRequestListeners(controller.firstPageKey);
    }

    return PagedListView(
      pagingController: controller,
      builderDelegate: PagedChildBuilderDelegate<T>(
          itemBuilder: (context, item, index) => getTile(item),
          firstPageProgressIndicatorBuilder: (context) {
            return _FirstPageProgressIndicator(
              apiState: apiState,
            );
          },
          noItemsFoundIndicatorBuilder: (context) {
            return _NoItemsFoundIndicator(
              keyword: form.keyword,
            );
          },
          newPageErrorIndicatorBuilder: (context) {
            return _SearchErrorPage(
              error: controller.error,
            );
          },
          firstPageErrorIndicatorBuilder: (context) {
            return _SearchErrorPage(
              error: controller.error,
            );
          },
          newPageProgressIndicatorBuilder: (context) {
            return const ProgressWidget(size: 30,);
          }
      ),
    );
  }

  Widget getTile(T item);
  Future<ApiResult<dynamic>> fetchSearchResults(String keyword, int page);
  List<T> getSearchResults(V res);
}

/// "最新の投稿" State
class _SearchLatestPostResultState
    extends _SearchResultState<PostInfo, SearchPostsResponse> {
  @override
  Future<ApiResult> fetchSearchResults(String keyword, int page) =>
      api.searchPost(keyword: keyword, page: page);

  @override
  List<PostInfo> getSearchResults(SearchPostsResponse res) => res.posts;

  @override
  Widget getTile(PostInfo item) => PostContentTile(post: item);
}

/// "ユーザー" State
class _SearchUserResultState
    extends _SearchResultState<UserMiniInfo, SearchUserResponse> {
  @override
  Future<ApiResult> fetchSearchResults(String keyword, int page) =>
      api.searchUser(keyword: keyword, page: page);

  @override
  List<UserMiniInfo> getSearchResults(SearchUserResponse res) => res.users;

  @override
  Widget getTile(UserMiniInfo item) => UserInfoTile(user: item);
}
