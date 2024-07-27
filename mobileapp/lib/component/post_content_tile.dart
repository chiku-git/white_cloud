import 'package:white_cloud/importer.dart';

class PostContentTile extends StatelessWidget {
  final PostInfo post;
  const PostContentTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final user = post.user;

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
                  Text(post.body),
                  Margin.vertical(5),
                  _PostContentReactionBar(post: post,),
                ],
              )
          )
        ],
      ),
    );
  }
}

class _PostContentReactionBar extends StatelessWidget {
  final PostInfo post;
  const _PostContentReactionBar({required this.post});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        PostReactionButton(
          icon: Icons.favorite_border,
          text: post.likes.toString(),
          onTap: () {

          },
        ),
        PostReactionButton(
          icon: Icons.mode_comment_outlined,
          text: post.comments.toString(),
          onTap: () {

          },
        )
      ],
    );
  }
}