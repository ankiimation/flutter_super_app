import 'package:dart_exporter_annotation/dart_exporter_annotation.dart';
import 'package:flutter/material.dart';
import 'package:super_app/super_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

@Export()
class MiniAppHandler {
  final dynamic Function(
    BuildContext context,
    MiniAppInvoker invoker,
    String appId,
    String method,
    String? params,
  ) onMethodCall;

  MiniAppHandler({required this.onMethodCall});

  
}

class MiniAppInvoker {
  late final WebViewController _controller;
  factory MiniAppInvoker(
    WebViewController controller,
  ) =>
      MiniAppInvoker._(controller);
  MiniAppInvoker._(
    WebViewController controller,
  ) {
    this._controller = controller;
  }

  Future<dynamic> invoke({
    required String method,
    required String data,
  }) async {
    return _controller.evaluateJavascript('handle("$method", "$data");');
  }
}

final _jsFunctions = ''' 
function invoke(methodName, params){
  ${SuperApp.instance.superAppName}.postMessage(`\${methodName}#\${params}`)
}

function handle(methodName, params){
  alert(methodName + params);
  return methodName + params;
}
''';
