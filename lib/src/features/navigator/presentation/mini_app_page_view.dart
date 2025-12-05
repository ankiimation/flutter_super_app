import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:super_app/src/features/configs/domain/models/mini_app_configs.dart';
import 'package:super_app/src/features/handler/domain/miniapp_handler.dart';
import 'package:super_app/super_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MiniAppPageView extends StatefulWidget {
  final MiniAppConfigsModel configs;
  final String pageContent;
  final GlobalKey<NavigatorState> navigatorState;
  const MiniAppPageView({
    Key? key,
    required this.configs,
    required this.pageContent,
    required this.navigatorState,
  }) : super(key: key);

  @override
  State<MiniAppPageView> createState() => _MiniAppPageViewState();
}

class _MiniAppPageViewState extends State<MiniAppPageView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  NavigatorState? get navigatorState => widget.navigatorState.currentState;

  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
        webViewController.loadUrl(
          Uri.dataFromString(
            widget.pageContent,
            mimeType: 'text/html',
            encoding: Encoding.getByName('utf-8'),
          ).toString(),
        );
      },
      javascriptChannels: {
        JavascriptChannel(
          name: SuperApp.instance.superAppName,
          onMessageReceived: (JavascriptMessage jsMessage) async {
            final message = jsMessage.message;
            final method = message.split('#').first;
            final params = message.split('#').last;

            final MiniAppInvoker invoker =
                MiniAppInvoker(await _controller.future);

            switch (method) {
              case 'push':
                final routeName = MiniAppConfigsModel.getRouteName(
                  widget.configs.appId,
                  params,
                );
                navigatorState?.pushNamed(
                  routeName,
                );
                break;
              case 'pop':
                navigatorState?.maybePop();
                break;
              case 'getUserInfo':
              //TODO: check quyeen
              //TODO:  Implement

              default:
                return SuperApp.instance.miniAppHandler?.onMethodCall(
                  context,
                  invoker,
                  widget.configs.appId,
                  method,
                  params,
                );
            }
          },
        ),
      },
    );
  }
}
