import 'package:db_miner_quotes_app_pr_7/controllers/quotecontroller.dart';
import 'package:db_miner_quotes_app_pr_7/controllers/themecontroller.dart';
import 'package:db_miner_quotes_app_pr_7/headers.dArt';
import 'package:db_miner_quotes_app_pr_7/headers.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuoteController mutable = Provider.of<QuoteController>(context);
    QuoteController unMutable =
        Provider.of<QuoteController>(context, listen: false);
    ThemeController themeController =
        Provider.of<ThemeController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuotesMania"),
        actions: [
          IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: themeController.isDark
                ? const Icon(
                    CupertinoIcons.moon,
                  )
                : const Icon(
                    Icons.light_mode,
                  ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.instance.likedQuotesPage,
              );
            },
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: mutable.quoteData.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Column(
                children: [
                  Container(
                    height: 55,
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFE7EEF8),
                          offset: Offset(2.6, 2.6),
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(45),
                        bottomLeft: Radius.circular(45),
                      ),
                      border: Border.all(color: Colors.indigo, width: 1.5),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.filter_alt_rounded),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mutable.quoteData.length,
                      itemBuilder: (context, index) => Container(
                        height: 50,
                        margin: const EdgeInsets.only(top: 30),
                        padding: const EdgeInsets.only(left: 20, right: 15),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFFE7EEF8),
                              offset: Offset(2.6, 2.6),
                              blurRadius: 1,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                          border: Border.all(color: Colors.indigo, width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            mutable.quoteData[index]['category'],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4 / 5,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: mutable.quoteData.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFFEAEEF9),
                                blurRadius: 1,
                                offset: Offset(4.5, 4.5),
                              )
                            ],
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1.5,
                            ),
                            borderRadius: (index == 0 || index % 3 == 0)
                                ? const BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                  )
                                : const BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                mutable.quoteData[index]['quotes'][0]['author'],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
