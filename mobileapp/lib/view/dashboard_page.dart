import 'package:white_cloud/importer.dart';

class DashBoardPage extends StatelessWidget with ThemeMixin {
  static const path = '/dashboard/';

  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return SafeArea(
      child: Scaffold(
        body: _Body(),
        bottomNavigationBar: Theme(
          data: theme.copyWith(splashFactory: NoSplash.splashFactory), // ボトムナビゲーションに対してリップルをつけない
          child: _BottomNavigation(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class _BottomNavigation extends StatelessWidget {
  static const int _homeIndex   = 0;
  static const int _searchIndex = 1;
  static const int _postIndex   = 2;
  static const int _favIndex    = 3;
  static const int _profIndex   = 4;

  @override
  Widget build(BuildContext context) {
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
      onTap: (index) => _onTapMenu(index, context),
    );
  }

  _onTapMenu(int index, BuildContext context) {
    switch(index){
      case _homeIndex:
        break;
      case _searchIndex:
        break;
      case _postIndex:
        final user = DBRepository().getLatestUser();
        final form = PostForm(user: user, body: "");
        Navigator.of(context).pushNamed(PostPage.path, arguments: form);
        break;
      case _favIndex:
        break;
      case _profIndex:
        break;
      default:
        break;
    }
  }
}
