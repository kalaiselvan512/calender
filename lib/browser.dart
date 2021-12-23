import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowserView extends StatefulWidget {
  const BrowserView({Key? key}) : super(key: key);

  @override
  _BrowserViewState createState() => _BrowserViewState();
}

class _BrowserViewState extends State<BrowserView> {

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),),
        title: Text('Browser'),
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://www.google.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
