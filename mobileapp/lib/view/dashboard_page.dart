import 'package:flutter/services.dart';
import 'package:white_cloud/importer.dart';

class DashBoardPage extends StatelessWidget {
  static const path = '/dashboard/';

  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (_) {
          SystemNavigator.pop(animated: true);
        },
        child: Scaffold(
          appBar: AppBar(),
        ),
      ),
    );
  }
}
