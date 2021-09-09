import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'appbar_custom.dart';

class AppWebView extends StatelessWidget {
  final String url;
  final String title;
  const AppWebView({required this.url, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(title: title),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
