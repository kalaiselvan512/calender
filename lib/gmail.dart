import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GmailView extends StatefulWidget {
  const GmailView({Key? key}) : super(key: key);

  @override
  _GmailViewState createState() => _GmailViewState();
}

class _GmailViewState extends State<GmailView> {
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
        title: Text('Gmail'),
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://mail.google.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
