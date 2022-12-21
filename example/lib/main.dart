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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: ListView(
        children: [
          ...List.generate(
            10,
            (index) => TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MiniAppView(
                      miniApp: simpleMiniApp(index),
                    ),
                  ),
                );
              },
              child: Text(
                'Mini App $index',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

MiniAppModel simpleMiniApp(dynamic appId) {
  return MiniAppModel(
    configs: MiniAppConfigsModel(
      appId: 'appId$appId',
      appName: 'Mini App $appId',
      appDescription: 'appDescription',
      pageRoutes: [
        '',
        'page2',
      ],
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
<h1> Mini App $appId</h1>
<p>Click the following button to see the function in action</p>  
<input type = "button" onclick = "invoke('push', 'page2')" value = "Push page 2">  
<p>
<p><b> Result from super app:</b> </p>
<p id="result"></p>
</p>
</body>
</html>
              ''',
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
<h1> Mini App $appId Page 2</h1>
<p>Click the following button to see the function in action</p>  
<input type = "button" onclick = "invoke('pop', '')" value = "Pop">  

</body>
</html>
              '''
    ],
  );
}
