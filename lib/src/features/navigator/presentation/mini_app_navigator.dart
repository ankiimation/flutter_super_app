import 'package:flutter/material.dart';
import 'package:super_app/src/features/mini_app/domain/model/mini_app_model.dart';
import 'package:super_app/src/features/navigator/presentation/mini_app_page_view.dart';

class MiniAppNavigator extends StatelessWidget {
  final MiniAppModel miniApp;
  const MiniAppNavigator({
    Key? key,
    required this.miniApp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: _MiniAppRoute(miniApp: miniApp).onGenerateRoute,
      initialRoute: miniApp.configs.initialRoute,
    );
  }
}

class _MiniAppRoute {
  final MiniAppModel miniApp;
  _MiniAppRoute({
    required this.miniApp,
  });
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final routes = miniApp.configs.pageRoutes.map(
      (e) => MaterialPageRoute(
        builder: (context) => MiniAppPageView(
          configs: miniApp.configs,
          pageContent:
              miniApp.pageContents[miniApp.configs.pageRoutes.indexOf(e)],
        ),
        settings: RouteSettings(
          name: miniApp.configs.getRouteName(e),
        ),
      ),
    );
    return routes.firstWhere(
      (element) => element.settings.name == settings.name,
      orElse: () => routes.first,
    );
  }
}
