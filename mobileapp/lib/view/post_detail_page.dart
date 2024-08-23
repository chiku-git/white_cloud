import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class PostDetailPage extends StatelessWidget {
  static const path = '/post/detail/';
  final PostDigest digest;

  const PostDetailPage({super.key, required this.digest});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: const [],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.thread),
          ),
          body: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: _Body(
                digest: digest,
              )
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final PostDigest digest;
  
  const _Body({required this.digest});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PostContentTile(
            digest: digest,
            canNavigateDetail: false,
          ),
          Margin.vertical(20),
          const StackDivider(text: Strings.reply,),
          _RepliesWidget(digest: digest,)
        ],
      ),
    );
  }
}

class _RepliesWidget extends ConsumerStatefulWidget {
  final PostDigest digest;
  const _RepliesWidget({required this.digest});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RepliesState();
}

class _RepliesState extends ConsumerState<_RepliesWidget> with ThemeMixin {
  late final PagingController<int, PostDigest> _controller;

  @override
  void initState() {
    super.initState();
    _controller = PagingController(firstPageKey: 0);
    _controller
      ..refresh()
      ..addPageRequestListener((page) async {
        (await ApiRepository().getReplies(
          post: widget.digest.post,
          page: page,
        )).when(
            onSuccess: (res) {
              final replies = res.replies;
              if (replies.isNotEmpty) {
                DBRepository().add(replies);
                _controller.appendPage(replies, page + 1);
              } else {
                _controller.appendLastPage([]);
              }
            },
            onFailure: (err) {
              _controller.error = err;
            },
            onCancel: () {

            }
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = getColorScheme(context);

    return PagedListView(
      pagingController: _controller,
      primary: false,
      shrinkWrap: true,
      builderDelegate: PagedChildBuilderDelegate<PostDigest>(
          itemBuilder: (BuildContext context, PostDigest item, int index) {
            return Column(
                children: [
                  PostContentTile(digest: item),
                  Divider(
                    color: colors.outlineVariant.withOpacity(0.3),
                  ),
                ]
            );
          },
          firstPageProgressIndicatorBuilder: (context) {
            return const _Adjust(
                child: ProgressWidget(size: 40,)
            );
          },
          newPageProgressIndicatorBuilder: (context) {
            return const _Adjust(
                child: ProgressWidget(size: 40,)
            );
          },
          noItemsFoundIndicatorBuilder: (context) {
            return const _Adjust(
                child: Text(Strings.noReplies)
            );
          },
          firstPageErrorIndicatorBuilder: (context) {
            return const _Adjust(
                child: Text(Strings.errorHasOccurred)
            );
          },
          newPageErrorIndicatorBuilder: (context) {
            return const _Adjust(
                child: Text(Strings.errorHasOccurred)
            );
          }
      ),
    );
  }
}

class _Adjust extends StatelessWidget {
  final Widget child;
  
  const _Adjust({required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Margin.vertical(20),
          child
        ],
      ),
    );
  }
}
