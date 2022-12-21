import 'package:flutter/material.dart';
import 'package:super_app/src/features/mini_app/domain/model/mini_app_model.dart';
import 'package:super_app/src/features/navigator/presentation/mini_app_page_view.dart';
import 'package:super_app/super_app.dart';

class MiniAppNavigator extends StatelessWidget {
  final MiniAppModel miniApp;
  final GlobalKey<NavigatorState> navigatorState;
  const MiniAppNavigator({
    Key? key,
    required this.miniApp,
    required this.navigatorState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorState,
      onGenerateRoute: _MiniAppRoute(
        miniApp: miniApp,
        navigatorState: navigatorState,
      ).onGenerateRoute,
      initialRoute: miniApp.configs.initialRoute,
    );
  }
}

class _MiniAppRoute {
  final MiniAppModel miniApp;
  final GlobalKey<NavigatorState> navigatorState;
  _MiniAppRoute({
    required this.miniApp,
    required this.navigatorState,
  });
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final routes = miniApp.configs.pageRoutes.map(
      (e) => MaterialPageRoute(
        builder: (context) => MiniAppPageView(
          configs: miniApp.configs,
          pageContent:
              miniApp.pageContents[miniApp.configs.pageRoutes.indexOf(e)],
          navigatorState: navigatorState,
        ),
        settings: RouteSettings(
          name: MiniAppConfigsModel.getRouteName(miniApp.configs.appId, e),
        ),
      ),
    );
    final result = routes.firstWhere(
      (element) => element.settings.name == settings.name,
      // orElse: () => routes.first,
    );
    return result;
  }
}
