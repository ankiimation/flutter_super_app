import 'package:flutter/material.dart';
import 'package:super_app/super_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    SuperApp.instance.initialize(
      superAppname: 'example',
      handler: MiniAppHandler(
        onMethodCall: (
          BuildContext context,
          invoker,
          String appId,
          String method,
          String? params,
        ) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('miniApp: $appId'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Method: $method'),
                    Text('params: $params'),
                  ],
                ),
              ),
            ),
          ).then(
            (value) {
              invoker.invoke(
                method: 'callFromSuperApp',
                data: '${DateTime.now()}',
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: MiniAppView(
          miniApp: MiniAppModel(
            configs: MiniAppConfigsModel(
              appId: 'miniApp1',
              appName: 'appName',
              appDescription: 'appDescription',
              pageRoutes: ['/'],
            ),
            pageContents: [
              '''
<html>
<head>  
<script type = "text/javascript">  
function invoke(methodName, params){
  ${SuperApp.instance.superAppName}.postMessage(`\${methodName}#\${params}`)
}

function handle(methodName, params){
  console.log(methodName + params);
  document.getElementById("result").innerHTML = `<p>\${methodName}</p><p>\${params}</p>`
  return methodName + params;
}
</script>  
</head>  
<body>
<h1> Mini App 1</h1>
<p>Click the following button to see the function in action</p>  
<input type = "button" onclick = "invoke('miniApp1Method', 'hehe')" value = "Display">  
<p>
<p><b> Result from super app:</b> </p>
<p id="result"></p>
</p>
</body>
</html>
              '''
            ],
          ),
        ),
      ),
    );
  }
}
