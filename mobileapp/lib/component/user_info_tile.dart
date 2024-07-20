import 'package:white_cloud/importer.dart';

class UserInfoTile extends StatelessWidget {
  final UserMiniInfo user;
  const UserInfoTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final imagePath = user.image;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      horizontalTitleGap: 10,
      leading: CirclePhotoFrame(
        image: imagePath != null
            ? Image.network(
          "${Config.localhost}$imagePath",
          fit: BoxFit.cover,
        )
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
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20)
        ),
        child: const Text(Strings.followUser),
      ),
    );
  }
}