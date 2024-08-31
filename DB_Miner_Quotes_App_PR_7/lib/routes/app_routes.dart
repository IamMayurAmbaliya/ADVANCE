import 'package:db_miner_quotes_app_pr_7/headers.dart';
import 'package:db_miner_quotes_app_pr_7/pages/liked_quotes_page/liked_quotes_app.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "/";
  String likedQuotesPage = "liked_quotes_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "liked_quotes_page": (context) => const LikedQuotesPage(),
  };
}
