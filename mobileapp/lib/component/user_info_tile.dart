import 'package:white_cloud/importer.dart';

class UserInfoTile extends StatelessWidget {
  late final FollowStateNotifier notifier;

  UserInfoTile({super.key, required UserMiniInfo user}) {
    notifier = FollowStateNotifier(user: user);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: notifier,
      builder: (context, child) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          horizontalTitleGap: 10,
          leading: UserImageIcon(
            userImage: notifier.user.image,
            diameter: 33,
          ),
          title: Text(
            notifier.user.userName,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            notifier.user.bio,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: notifier.user.followInfo?.isFollowing == true
              ? _UnFollowButton(notifier: notifier)
              : _FollowButton(notifier: notifier,),
        );
      },
    );
  }
}

class _FollowButton extends StatelessWidget with UIMixin {
  final FollowStateNotifier notifier;

  const _FollowButton({required this.notifier});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: notifier,
      builder: (context, child) {
        return OutlinedProgressButton(
          state: ButtonState.fromApiState(notifier.state),
          onPressed: () {
            notifier.follow();
          },
          fixedSize: const Size(120, 40),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: const Text(Strings.followUser),
        );
      },
    );
  }
}

class _UnFollowButton extends StatelessWidget with UIMixin, ThemeMixin {
  final FollowStateNotifier notifier;

  const _UnFollowButton({required this.notifier});

  @override
  Widget build(BuildContext context) {
    final colors = getColorScheme(context);

    return ListenableBuilder(
      listenable: notifier,
      builder: (context, child) {
        return RoundedProgressButton(
          state: ButtonState.fromApiState(notifier.state),
          backgroundColor: colors.tertiary,
          progressColor: colors.onTertiary,
          successColor: colors.onTertiary,
          onPressed: () {
            notifier.unfollow();
          },
          fixedSize: const Size(120, 40),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Text(
            Strings.following,
            style: TextStyle(
              color: colors.onTertiary
            ),
          ),
        );
      },
    );
  }
}

class FollowStateNotifier extends ChangeNotifier {
  late UserMiniInfo user;
  ApiState state = ApiState.idle;

  FollowStateNotifier({required this.user});

  follow() {
    _startLoading();
    ApiRepository().follow(userId: user.id).then((result) {
      result.when(
          onSuccess: (res) {
            state = ApiState.idle;
            user = res.user;
            notifyListeners();
          },
          onFailure: (err) {
            state = ApiState.failure;
            notifyListeners();
          },
          onCancel: () {
            state = ApiState.idle;
            notifyListeners();
          }
      );
    });
  }

  unfollow() {
    _startLoading();
    ApiRepository().unfollow(userId: user.id).then((result) {
      result.when(
          onSuccess: (res) {
            user = res.user;
            _finishLoading();
          },
          onFailure: (err) {
            _finishLoading();
          },
          onCancel: () {
            _finishLoading();
          }
      );
    });
  }

  _startLoading() {
    state = ApiState.loading;
    notifyListeners();
  }

  _finishLoading() {
    state = ApiState.idle;
    notifyListeners();
  }
}