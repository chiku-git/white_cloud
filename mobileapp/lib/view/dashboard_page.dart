import 'package:white_cloud/importer.dart';

class DashBoardPage extends StatelessWidget with ThemeMixin {
  static const path = '/dashboard/';
  final User? user;

  const DashBoardPage({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return ProviderScope(
      overrides: [
        dashboardViewModelProvider.overrideWith((ref) {
          final vm = DashboardViewmodel(user: user ?? DBRepository().getLatestUser());
          return DashboardViewModelNotifier(vm);
        })
      ],
      child: SafeArea(
        child: Scaffold(
          body: _Body(),
          bottomNavigationBar: Theme(
            data: theme.copyWith(splashFactory: NoSplash.splashFactory), // ボトムナビゲーションに対してリップルをつけない
            child: _BottomNavigation(),
          ),
        ),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(dashboardViewModelProvider);
    switch(vm.bottomNavIndex) {
      case _BottomNavigation.digestIndex:
        return const DigestPage();
      case _BottomNavigation.searchIndex:
        return SearchPage();
      case _BottomNavigation.favIndex:
        return const ActivityPage();
      default:
        return const Placeholder();
    }
  }
}

class _BottomNavigation extends ConsumerWidget with ThemeMixin {
  static const int digestIndex = 0;
  static const int searchIndex = 1;
  static const int postIndex   = 2;
  static const int favIndex    = 3;
  static const int profIndex   = 4;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(dashboardViewModelProvider);

    return BottomNavigationBar(
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: UserImageIcon(
            userImage: vm.currentUser.image,
            boxShadow: vm.bottomNavIndex == profIndex
              ? [
                BoxShadow(
                  color: getColorScheme(context).primary,
                  spreadRadius: 2,
                  blurRadius: 5,
                )
              ]
              : null,
          ),
          label: "",
        )
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: vm.bottomNavIndex,
      onTap: (index) {
        _onTapMenu(
            index,
            context,
            ref.read(dashboardViewModelProvider.notifier),
        );
      },
    );
  }

  _onTapMenu(int index, BuildContext context, DashboardViewModelNotifier notifier) {
    switch(index){
      case digestIndex:
        notifier.update(bottomNavIndex: index);
        break;
      case searchIndex:
        notifier.update(bottomNavIndex: index);
        break;
      case postIndex:
        final user = DBRepository().getLatestUser();
        final form = PostForm.empty(user: user);
        Navigator.of(context).pushNamed(PostPage.path, arguments: form);
        break;
      case favIndex:
        notifier.update(bottomNavIndex: index);
        break;
      case profIndex:
        notifier.update(bottomNavIndex: index);
        break;
      default:
        break;
    }
  }
}
