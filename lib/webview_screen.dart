import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class webviewscreen extends StatefulWidget {
  const webviewscreen({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<webviewscreen> createState() => _webviewscreenState();
}

class _webviewscreenState extends State<webviewscreen> {
  late InAppWebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web View Example"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse(widget.url),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  _webViewController = controller;
                },
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
