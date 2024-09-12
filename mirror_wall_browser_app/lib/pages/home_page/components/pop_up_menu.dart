import 'package:flutter/material.dart';
import 'package:mirror_wall_browser_app/provider/bookmark_provider.dart';
import 'package:mirror_wall_browser_app/provider/controller/web_controller.dart';
import 'package:mirror_wall_browser_app/provider/engine_provider.dart';
import 'package:mirror_wall_browser_app/routes/app_routes.dart';
import 'package:provider/provider.dart';

Widget popUpMenuButtonAppBar(BuildContext context) {
  BookMarkProvider bookMarkProvider = Provider.of<BookMarkProvider>(context);
  WebController webProvider = Provider.of<WebController>(context);
  WebController webProviderMethod =
      Provider.of<WebController>(context, listen: false);
  return PopupMenuButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
    ),
    itemBuilder: (context) => <PopupMenuEntry>[
      const PopupMenuItem(
        value: "BookMark",
        child: Text(
          "BookMark",
        ),
      ),
      const PopupMenuItem(
        value: "History",
        child: Text(
          "History",
        ),
      ),
      const PopupMenuItem(
        value: "Engine",
        child: Text(
          "Engine",
        ),
      ),
    ],
    onSelected: (value) {
      if (value == "BookMark") {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                    child: Text(
                      "BookMarks",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                    height: 1,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: bookMarkProvider.bookmarkList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Text(
                              bookMarkProvider.bookmarkList[index],
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.bookmark,
                              color: Colors.blue,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      } else if (value == "History") {
        Navigator.of(context).pushNamed(
          AppRoutes.instance.historyPage,
        );
      } else if (value == "Engine") {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Search Engine"),
              content: SizedBox(
                height: 230,
                width: 400,
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          title: Text(webProvider.searchEngineNames[index]),
                          value: webProvider.searchEngineNames[index],
                          groupValue: webProvider.groupValue,
                          onChanged: (value) {
                            webProviderMethod
                                .updateSearchEngineGroupValue(value!);
                            webProviderMethod.searchEngine(value);
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    },
  );
}
