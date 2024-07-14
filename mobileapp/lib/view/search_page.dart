import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';
import 'package:white_cloud/model/api/search_user.dart';
import 'package:white_cloud/provider/search_form_notifier.dart';

import '../model/api/user_mini_info.dart';
import '../model/search_form.dart';

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
              appBar: _SearchBar(pages: pages,),
              body: TabBarView(
                children: pages,
              ),
            ),
          )
      ),
    );
  }
}

class _SearchBar extends StatelessWidget with ThemeMixin implements PreferredSizeWidget {
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
          child: _SearchBarForm(),
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

class _SearchBarForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();

    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            controller.clear();
          },
        ),
        border: InputBorder.none,
        hintText: "White Cloudを検索",
      ),
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (String? keyword) {
        if (keyword?.isNotEmpty == true) {
          ref.read(searchFormProvider.notifier).update(keyword: keyword);
        }
      },
    );
  }
}

abstract class SearchResultPage extends ConsumerStatefulWidget {
  final String title;

  const SearchResultPage(this.title, {super.key});
}

class _SearchLatestPostResultPage extends SearchResultPage {
  const _SearchLatestPostResultPage(): super("最新");

  @override
  ConsumerState<ConsumerStatefulWidget> createState()
    => _SearchLatestPostResultState();
}

class _SearchUserResultPage extends SearchResultPage {
  const _SearchUserResultPage(): super("ユーザー");

  @override
  ConsumerState<ConsumerStatefulWidget> createState()
    => _SearchUserResultState();
}

class _SearchLatestPostResultState extends ConsumerState<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class _SearchUserResultState extends ConsumerState<SearchResultPage>
    with AutomaticKeepAliveClientMixin {
  final PagingController<int, UserMiniInfo> _controller =
      PagingController(firstPageKey: 0);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller.addPageRequestListener((page) async {
      final keyword = ref.read(searchFormProvider).keyword;
      if (keyword.isEmpty) return;

      final result = await ApiRepository().searchUser(
          keyword: keyword,
          page: page
      );

      result.when(
          onSuccess: (res) {
            if (res.users.isNotEmpty) {
              _controller.appendPage(res.users, page + 1);
            } else {
              _controller.appendLastPage([]);
            }
          },
          onFailure: (err) {
            _controller.error = err.message;
          }
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final form = ref.watch(searchFormProvider);
    if (form.keyword.isNotEmpty) {
      _controller
        ..refresh()
        ..notifyPageRequestListeners(_controller.firstPageKey);
    }

    return PagedListView(
        pagingController: _controller,
        builderDelegate: PagedChildBuilderDelegate<UserMiniInfo>(
          itemBuilder: (context, item, index) => _UserInfoTile(user: item)
        ),
    );
  }
}

class _UserInfoTile extends StatelessWidget {
  final UserMiniInfo user;
  const _UserInfoTile({required this.user});

  @override
  Widget build(BuildContext context) {
    final imagePath = user.image;

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
      leading: CirclePhotoFrame(
        image: imagePath != null
            ? Image.network("${Config.localhost}$imagePath")
            : const PlaceHolderPersonImage(),
        borderWidth: 0,
        diameter: 35,
      ),
      title: Text(
        user.userName,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        user.bio,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20)
        ),
        child: Text("フォロー"),
      ),
    );
  }
}