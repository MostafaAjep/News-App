import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebView extends StatelessWidget {
  const WebView({super.key, required this.articalModel});

  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: WebViewController()
          ..setNavigationDelegate(NavigationDelegate())
          ..loadRequest(Uri.parse(articalModel.url!)),
      ),
    );
  }
}
