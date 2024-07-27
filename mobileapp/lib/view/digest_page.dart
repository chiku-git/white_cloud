import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class DigestPage extends StatelessWidget {
  static const path = '/dashboard/digest/';
  const DigestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        digestViewModelProvider.overrideWith((ref) {
          final viewModel = DigestViewModel();
          return DigestViewModelNotifier(viewModel);
        })
      ],
      child: SafeArea(
          child: Scaffold(
            appBar: _TopBar(),
            body: _Body(),
          )
      ),
    );
  }
}

class _TopBar extends ConsumerWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardVm = ref.read(dashboardViewModelProvider);
    final currentUser = dashboardVm.currentUser;

    return AppBar(
      automaticallyImplyLeading: false,
      title: CirclePhotoFrame(
        image: currentUser.image != null
            ? Image.network("${Config.localhost}${currentUser.image}",
              fit: BoxFit.cover,
        )
        : const PlaceHolderPersonImage(),
        diameter: 30,
        borderWidth: 0,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _DigestContents();
  }
}

class _DigestContents extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DigestContentsState();
}

class _DigestContentsState
    extends ConsumerState<_DigestContents>
    with AutomaticKeepAliveClientMixin {

  DigestViewModel get viewModel => ref.read(digestViewModelProvider);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    viewModel.setUpController();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      onRefresh: () async {
        viewModel.controller
          ..refresh()
          ..notifyPageRequestListeners(0);
      },
      child: PagedListView(
          pagingController: viewModel.controller,
          builderDelegate: PagedChildBuilderDelegate<PostInfo>(
              itemBuilder: (BuildContext context, PostInfo item, int index) {
                return PostContentTile(post: item);
              },
              firstPageErrorIndicatorBuilder: (context) {
                return _FirstPageErrorWidget(error: viewModel.pagingError);
              },
              newPageErrorIndicatorBuilder: (context) {
                return InkWell(
                    onTap: () => viewModel.retryRequestNewPage(),
                    child: _NewPageErrorWidget(
                      error: viewModel.pagingError,
                    )
                );
              },
              newPageProgressIndicatorBuilder: (context) {
                return _NewPageProgressIndicator();
              },
              noItemsFoundIndicatorBuilder: (context) {
                return _NoItemsFoundWidget();
              }
          )
      ),
    );
  }
}

class _NewPageProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: LinearProgressIndicator(),
    );
  }
}

class _NoItemsFoundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(Strings.noPosts),
    );
  }
}

class _FirstPageErrorWidget extends ConsumerWidget with ThemeMixin {
  final ErrorResponse error;
  const _FirstPageErrorWidget({required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = getColorScheme(context);
    final viewModel = ref.read(digestViewModelProvider);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
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
          ),
          Margin.vertical(20),
          CircleIconButton(
              fixedSize: const Size(20, 20),
              onPressed: () {
                viewModel.retryRequestNewPage();
              },
              child: SVGLoader(
                  fileName: 'reload',
                  width: 30,
                  height: 30,
                  colorFilter: ColorFilter.mode(
                      colors.primary,
                      BlendMode.srcIn
                  )
              ).load()
          )
        ],
      ),
    );
  }
}

class _NewPageErrorWidget extends StatelessWidget with ThemeMixin {
  final ErrorResponse error;
  const _NewPageErrorWidget({required this.error});

  @override
  Widget build(BuildContext context) {
    final colors = getColorScheme(context);

    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                text: Strings.errorHasOccurred,
                style: TextStyle(
                  color: colors.error,
                )
            ),
            const TextSpan(
                text: "\n"
            ),
            TextSpan(
                text: Strings.retry,
                style: TextStyle(
                  color: colors.onSurfaceVariant,
                )
            ),
          ],
        ),
      ),
    );
  }
}