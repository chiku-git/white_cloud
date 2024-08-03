import 'package:white_cloud/importer.dart';


class PostContentTile extends StatelessWidget {
  final PostDigest digest;
  const PostContentTile({super.key, required this.digest});

  @override
  Widget build(BuildContext context) {
    final user = digest.post.user;

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                  Text(digest.post.body),
                  Margin.vertical(5),
                  _PostContentReactionBar(digest: digest,),
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
    final isMyFavorite = _digest.favorite.isMyFavorite;

    return Wrap(
      direction: Axis.horizontal,
      children: [
        PostReactionButton(
          icon: isMyFavorite ? Icons.favorite :Icons.favorite_border,
          text: _digest.favorite.count.toString(),
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
          text: _digest.reply.count.toString(),
          onTap: () {

          },
          gap: 5,
        )
      ],
    );
  }

  _toggleFavorite() {
    _apiState = ApiState.loading;
    ApiRepository().toggleFavorite(post: _digest.post).then((result) {
      result.when(
          onSuccess: (res) {
            Future(() {
              setState(() {
                _apiState = ApiState.idle;
                _digest = res.digest;
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