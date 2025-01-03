import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class UserPage extends StatelessWidget {
  static const path = '/user/profile';
  final UserInfo user;
  final bool isMe;

  const UserPage._({required this.user, this.isMe = false});
  factory UserPage.from({required User user, bool isMe = false})
    => UserPage._(user: UserInfo.fromJson(user.toJson()), isMe: isMe,);
  factory UserPage.of({required UserInfo user, bool isMe = false})
    => UserPage._(user: user, isMe: isMe);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        userViewModelProvider.overrideWith((ref) {
          return UserViewModelNotifier(
              UserViewmodel(
                  user: user,
                  isMe: isMe
              )
          );
        })
      ],
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: !isMe,
            ),
            body: SingleChildScrollView(
                child: _Body()
            ),
          )
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        children: [
          _UserProfileWidget(),
          Margin.vertical(5),
          _FollowingInfoWidget(),
          Margin.vertical(15),
          _UserPostsWidget(),
        ],
      ),
    );
  }
}

class _UserProfileWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(userViewModelProvider);
    final user = vm.user;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction: Axis.horizontal,
            children: [
              UserImageIcon(
                  diameter: 50,
                  userImage: user.image
              ),
              Expanded(child: Container()),
              _getSideButton(isMe: vm.isMe),
            ],
          ),
          Text(
            user.userName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.fade
            ),
          ),
          Text(
            user.bio,
            style: const TextStyle(
                fontSize: 16,
                overflow: TextOverflow.fade
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSideButton({required bool isMe}) {
    if (isMe) {
      return _EditProfileButton();
    } else {
      return Container();
    }
  }
}

class _EditProfileButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider).user;

    return OutlinedButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(
              context,
              UserRegistrationPage.path,
              arguments: UserForm(
                userName: user.userName,
                bio: user.bio,
                email: user.email,
                password: '',
                image: ImageData(
                  url: user.image
                )
              )
          );
          if (result is UserInfo) {
            ref.read(userViewModelProvider.notifier).update(user: result);
          }
        },
        child: const Text(Strings.editingProfile)
    );
  }
}

class _FollowingInfoWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 10,
        children: [
          _FollowingListButton(),
          _FollowerListButton(),
        ],
      ),
    );
  }
}

class _FollowerListButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider).user;
    return TextButton(
        onPressed: () {
          final ivo = FollowPageIvo(user: user, initialPageIndex: 1);
          Navigator.of(context).pushNamed(FollowPage.path, arguments: ivo);
        },
        child: Text("${user.followInfo?.followers ?? 0} ${Strings.followers}")
    );
  }
}

class _FollowingListButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider).user;
    return TextButton(
        onPressed: () {
          final ivo = FollowPageIvo(user: user, initialPageIndex: 0);
          Navigator.of(context).pushNamed(FollowPage.path, arguments: ivo);
        },
        child: Text("${user.followInfo?.following ?? 0} ${Strings.followings2}")
    );
  }
}

class _UserPostsWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(userViewModelProvider);
    final notifier = ref.read(userViewModelProvider.notifier);

    return PagedListView(
      shrinkWrap: true,
      primary: false,
      pagingController: vm.controller,
      builderDelegate: PagedChildBuilderDelegate<PostDigest>(
        itemBuilder: (BuildContext context, PostDigest item, int index) {
          Future(() {
            notifier.updateFromUserMiniInfo(user: item.post.user);
            if (vm.isMe) {
              DBRepository().saveUserFromJson(json: vm.user.toJson());
            }
          });
          return PostContentTile(digest: item);
        }
      ),
    );
  }
}