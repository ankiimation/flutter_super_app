import 'package:dart_exporter_annotation/dart_exporter_annotation.dart';
import 'package:flutter/material.dart';
import 'package:super_app/src/features/mini_app/domain/model/mini_app_model.dart';
import 'package:super_app/src/features/navigator/presentation/mini_app_navigator.dart';

@Export()
class MiniAppView extends StatelessWidget {
  final MiniAppModel miniApp;
  const MiniAppView({
    Key? key,
    required this.miniApp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          miniApp.configs.appName,
        ),
      ),
      body: MiniAppNavigator(
        miniApp: miniApp,
      ),
    );
  }
}
