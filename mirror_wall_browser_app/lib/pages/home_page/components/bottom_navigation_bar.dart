import 'package:flutter/material.dart';
import 'package:mirror_wall_browser_app/provider/bookmark_provider.dart';
import 'package:mirror_wall_browser_app/provider/controller/web_controller.dart';
import 'package:provider/provider.dart';

Widget bottomNavigationBar(BuildContext context) {
  WebController webProvider = Provider.of<WebController>(context);
  WebController webProviderMethod =
      Provider.of<WebController>(context, listen: false);
  BookMarkProvider bookMarkProvider =
      Provider.of<BookMarkProvider>(context, listen: false);
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            webProviderMethod.searchEngine(webProvider.groupValue);
          },
          icon: const Icon(Icons.home_outlined),
        ),
        IconButton(
          onPressed: () {
            bookMarkProvider.addToBookMark();
          },
          icon: const Icon(Icons.bookmark_add_outlined),
        ),
        IconButton(
          onPressed: () {
            webProvider.canBack
                ? () {
                    webProviderMethod.canGoBack();
                  }
                : null;
          },
          icon: const Icon(Icons.chevron_left_outlined),
        ),
        IconButton(
          onPressed: () {
            webProviderMethod.reload();
          },
          icon: const Icon(Icons.refresh_outlined),
        ),
        IconButton(
          onPressed: () {
            webProvider.canForward
                ? () {
                    webProviderMethod.canGoForward();
                  }
                : null;
          },
          icon: const Icon(Icons.chevron_right_outlined),
        ),
      ],
    ),
  );
}
