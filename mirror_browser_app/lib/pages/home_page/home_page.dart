import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_browser_app/controllers/all_in_one_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    PullToRefreshController pullToRefreshController = PullToRefreshController(
      onRefresh: () {
        inAppWebViewController.reload();
      },
    );
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            height: 40,
            width: 350,
            child: TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_sharp),
                  suffixIcon: IconButton(
                    onPressed: () {
                      textEditingController.clear();
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                    ),
                  ),
                  hintText: 'Search or type URL',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10)),
              onFieldSubmitted: (value) {
                Provider.of<BrowserController>(context, listen: false)
                    .updateSearchedText(value);

                Provider.of<BrowserController>(context, listen: false)
                    .searchEngines();
              },
            ),
          ),
          const SizedBox(
            width: 25,
          )
        ],
        // bottom:
      ),
      body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                snapshot.data!.contains(ConnectivityResult.wifi)) {
              return Stack(
                children: [
                  InAppWebView(
                    initialUrlRequest: URLRequest(
                      url: WebUri('https://www.google.com/'),
                    ),
                    onWebViewCreated: (controller) {
                      inAppWebViewController = controller;
                    },
                    onProgressChanged: (controller, progress) {
                      Provider.of<BrowserController>(context, listen: false)
                          .onchange_progress(progress);
                    },

                    // for the add to fav site
                    onLoadStop: (controller, url) async {
                      await Provider.of<BrowserController>(context,
                              listen: false)
                          .setCurrentUrl();
                      await Provider.of<BrowserController>(context,
                              listen: false)
                          .checkIfShouldGoBack();
                      await Provider.of<BrowserController>(context,
                              listen: false)
                          .canGoForward();
                      await pullToRefreshController.endRefreshing();
                    },
                    pullToRefreshController: pullToRefreshController,
                  ),
                  // (Provider.of<BrowserController>(context, listen: true)
                  //             .progress <
                  //         1)
                  //     ? Align(
                  //         alignment: Alignment.topCenter,
                  //         child: LinearProgressIndicator(
                  //           color: Colors.blueAccent,
                  //           value: Provider.of<BrowserController>(context,
                  //                   listen: true)
                  //               .progress,
                  //         ),
                  //       )
                  //     : Container(),
                ],
              );
            } else {
              return Center(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/gifs/tenor.gif"),
                    ),
                  ),
                ),
              );
            }
          }),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                inAppWebViewController.loadUrl(
                  urlRequest: URLRequest(
                    url: WebUri('https://www.google.com/'),
                  ),
                );
              },
              icon: const Icon(Icons.home),
            ),

            // here is logic of back button
            IconButton(
                onPressed: Provider.of<BrowserController>(context, listen: true)
                        .isButtonEnabled
                    ? () {
                        (
                          Provider.of<BrowserController>(context, listen: false)
                              .goBack(),
                        );
                      }
                    : null,
                icon: const Icon(Icons.chevron_left),
                iconSize: 30),
            IconButton(
              onPressed: () {
                inAppWebViewController.reload();
              },
              icon: const Icon(Icons.refresh),
              iconSize: 25,
            ),
            IconButton(
              onPressed: Provider.of<BrowserController>(context, listen: true)
                      .isButtonForward
                  ? () {
                      (Provider.of<BrowserController>(context, listen: false)
                          .goForward());
                    }
                  : null,
              icon: const Icon(Icons.chevron_right),
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
