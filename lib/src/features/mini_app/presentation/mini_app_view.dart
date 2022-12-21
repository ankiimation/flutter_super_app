import 'package:dart_exporter_annotation/dart_exporter_annotation.dart';
import 'package:flutter/material.dart';
import 'package:super_app/src/features/mini_app/domain/model/mini_app_model.dart';
import 'package:super_app/src/features/navigator/presentation/mini_app_navigator.dart';

@Export()
class MiniAppView extends StatefulWidget {
  final MiniAppModel miniApp;
  const MiniAppView({
    Key? key,
    required this.miniApp,
  }) : super(key: key);

  @override
  _MiniAppViewState createState() => _MiniAppViewState();
}

class _MiniAppViewState extends State<MiniAppView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState?.canPop() == true) {
          navigatorKey.currentState?.pop();
        } else {
          return true;
        }

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.miniApp.configs.appName,
          ),
        ),
        body: MiniAppNavigator(
          miniApp: widget.miniApp,
          navigatorState: navigatorKey,
        ),
      ),
    );
  }
}
