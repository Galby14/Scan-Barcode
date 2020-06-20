import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class tampilweb extends StatelessWidget {
  final String linkweb;
  tampilweb({
    this.linkweb
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Webview'),
        ),
        body: WebView(
          initialUrl: linkweb,
          javascriptMode: JavascriptMode.unrestricted,
        )
      );

  }
}