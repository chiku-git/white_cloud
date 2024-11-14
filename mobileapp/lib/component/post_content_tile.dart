import 'package:white_cloud/importer.dart';

class PostContentTile extends ConsumerStatefulWidget {
  final PostDigest digest;
  final bool canNavigateDetail;
  final bool canReaction;

  const PostContentTile({
    super.key,
    required this.digest,
    this.canNavigateDetail = true,
    this.canReaction = false,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => PostContentState();
}

class PostContentState extends ConsumerState<PostContentTile> {
  late PostDigest _digest;

  @override
  void initState() {
    super.initState();
    _digest = widget.digest;
  }


  @override
  Widget build(BuildContext context) {
    final user = _digest.post.user;

    return InkWell(
      onTap: widget.canNavigateDetail ? () async {
        Navigator.of(context).pushNamed(
            PostDetailPage.path,
            arguments: DBRepository().findDigestBy(_digest)
        ).then((_) {
          setState(() {
            _digest = DBRepository().findDigestBy(_digest);
          });
        });
      } : null,
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: UserImageIcon(
              userImage: user.image,
              diameter: 33,
            ),
          ),
          Margin.horizontal(10),
          Expanded(
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.start,
                direction: Axis.vertical,
                children: [
                  Text(
                    user.userName,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Margin.vertical(5),
                  Text(_digest.post.body),
                  Margin.vertical(5),
                  Visibility(
                      visible: !widget.canReaction,
                      child: _PostContentReactionBar(digest: widget.digest,)
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}

class _PostContentReactionBar extends ConsumerStatefulWidget {
  final PostDigest digest;
  const _PostContentReactionBar({required this.digest});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PostContentReactionState();
}

class _PostContentReactionState
    extends ConsumerState<_PostContentReactionBar>
    with AutomaticKeepAliveClientMixin {
  late PostDigest _digest;
  late ApiState _apiState;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _digest = widget.digest;
    _apiState = ApiState.idle;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final digest = DBRepository().findDigestBy(_digest);
    final isMyFavorite = digest.favorite.isMyFavorite;

    return Wrap(
      direction: Axis.horizontal,
      children: [
        PostReactionButton(
          icon: isMyFavorite ? Icons.favorite :Icons.favorite_border,
          text: digest.favorite.count.toString(),
          color: isMyFavorite ? Colors.red : null,
          onTap: () {
            if (_apiState == ApiState.loading) return;
            setState(() => _toggleFavorite());
          },
          isLoading: _apiState == ApiState.loading,
        ),
        Margin.horizontal(10),
        PostReactionButton(
          icon: Icons.mode_comment_outlined,
          text: digest.reply.count.toString(),
          onTap: () =>  _reply(),
          gap: 5,
        )
      ],
    );
  }

  _reply() async {
    final user = DBRepository().getLatestUser();
    final form = PostForm(user: user, body: "", replyTo: _digest);
    Navigator.of(context).pushNamed(PostPage.path, arguments: form).then((res) {
      if (res != null) {
        setState(() {
          DBRepository().update((res as ReplyPostResponse).replyTo);
        });
      }
    });
  }

  _toggleFavorite() {
    _apiState = ApiState.loading;
    ApiRepository().toggleFavorite(post: _digest.post).then((result) {
      result.when(
          onSuccess: (res) {
            Future(() {
              setState(() {
                _apiState = ApiState.idle;
                DBRepository().update(res.digest);
              });
            });
          },
          onFailure: (err) {
            setState(() {
              _apiState = ApiState.idle;
            });
          },
          onCancel: () {
            setState(() {
              _apiState = ApiState.idle;
            });
          }
      );
    });
  }
}