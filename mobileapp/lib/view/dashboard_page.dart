import 'package:white_cloud/importer.dart';
import 'package:white_cloud/provider/dashboard_viewmodel_provider.dart';
import 'package:white_cloud/view/search_page.dart';
import 'package:white_cloud/view_model/dashboard_viewmodel.dart';

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
      case _BottomNavigation.searchIndex:
        return SearchPage();
      default:
        return Placeholder();
    }
  }
}

class _BottomNavigation extends ConsumerWidget {
  static const int homeIndex   = 0;
  static const int searchIndex = 1;
  static const int postIndex   = 2;
  static const int favIndex    = 3;
  static const int profIndex   = 4;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(dashboardViewModelProvider);

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_3_rounded),
          label: "",
        )
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: vm.bottomNavIndex,
      onTap: (index) {
        _notifierNavigationChanged(index, ref);
        _onTapMenu(index, context);
      },
    );
  }

  _notifierNavigationChanged(int index, WidgetRef ref) {
    if (index != postIndex) {
      ref.read(dashboardViewModelProvider.notifier).update(bottomNavIndex: index);
    }
  }

  _onTapMenu(int index, BuildContext context) {
    switch(index){
      case homeIndex:
        break;
      case searchIndex:
        break;
      case postIndex:
        final user = DBRepository().getLatestUser();
        final form = PostForm(user: user, body: "");
        Navigator.of(context).pushNamed(PostPage.path, arguments: form);
        break;
      case favIndex:
        break;
      case profIndex:
        break;
      default:
        break;
    }
  }
}
