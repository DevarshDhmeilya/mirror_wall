import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MainProvider extends ChangeNotifier {
  String url = "https://duckduckgo.com/.";
  late InAppWebViewController webViewController;

  changeWeb(int value) {
    if (value == 1) {
      url = "www.google.com";
      print(url);
    } else if (value == 2) {
      url = "mail.yahoo.com";
      print(url);
    } else if (value == 3) {
      url = "bing.com";
      print(url);
    } else if (value == 4) {
      url = "https://duckduckgo.com/.";
      print(url);
    }
  }
}
