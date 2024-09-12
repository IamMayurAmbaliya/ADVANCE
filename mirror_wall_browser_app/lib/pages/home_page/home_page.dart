import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall_browser_app/pages/home_page/components/bottom_navigation_bar.dart';
import 'package:mirror_wall_browser_app/pages/home_page/components/pop_up_menu.dart';
import 'package:mirror_wall_browser_app/provider/controller/web_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WebController webProvider = Provider.of<WebController>(context);
    WebController webProviderMethod =
        Provider.of<WebController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          webProvider.groupValue,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          popUpMenuButtonAppBar(context),
        ],
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri('https://www.google.com/'),
        ),
        onWebViewCreated: webProviderMethod.onWebViewCreated,
        pullToRefreshController: webProvider.pullToRefreshController,
      ),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }
}
