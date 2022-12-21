// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'src/features/handler/domain/miniapp_handler.dart';

export 'src/exports.dart_exporter.dart';

class SuperApp {
  // static const MethodChannel _channel = const MethodChannel('super_app');

  // static Future<String?> get platformVersion async {
  //   final String? version = await _channel.invokeMethod('getPlatformVersion');
  //   return version;
  // }

  SuperApp._();
  static final instance = SuperApp._();

  MiniAppHandler? miniAppHandler;
  late final String superAppName;
  void initialize({
    required String superAppname,
    MiniAppHandler? handler,
  }) {
    this.superAppName = superAppname;
    this.miniAppHandler = handler;
  }
}
