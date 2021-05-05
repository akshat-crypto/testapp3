import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class HomePg extends StatefulWidget {
  @override
  _HomePgState createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        shadowColor: Colors.blue,
        title: Text('Aashiyana Decors'),
      ),*/
      body: Center(
        child: WebView(
          initialUrl: 'https://aashiyanadecor.in/',
        ),
      ),
    );
  }
}
