import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

//import 'homepg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WebView(
          initialUrl: "http://aashiyanadecor.in",
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (NavigationRequest request) {
            if (request.url
                .startsWith('whatsapp://send/?phone=919314021950&text')) {
              print('blocking navigation to $request}');
              //_launchURL('https://wa.me/9461246324');
              _launchURL('whatsapp://send/?phone=9461246324');
              //return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
        /*
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
        ),
        */
      ),
      /*
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebView(
              initialUrl: 'http://aashiyanadecor.in',
              javascriptMode: JavascriptMode.unrestricted,
              navigationDelegate: (NavigationRequest request) {
                if (request.url.startsWith('https://my.redirect.url.com')) {
                  print('blocking navigation to $request}');
                  _launchURL('https://my.redirect.url.com');
                  return NavigationDecision.prevent;
                }
              },
            ),
      },*/
      /*
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              allowFileURLs: true,
              //javascriptMode: JavascriptMode.unrestricted,
              //javascriptChannels: JavascriptChannel(name: 'Whatsapp', onMessageReceived: 'hello world'),
              withJavascript: true,
              withLocalUrl: true,
              withLocalStorage: true,
              url: "http://aashiyanadecor.in",
              /*
              appBar: new AppBar(
                title: new Text("AashiyanaDecor"),
              ),*/
            ),
      },*/
    );
    //webviewflutter example
    /*
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      /*
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      home: HomePg(),
    );
    */
  }
}
