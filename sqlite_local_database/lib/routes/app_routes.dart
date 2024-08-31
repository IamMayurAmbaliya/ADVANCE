import 'package:sqlite_local_database/headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String homePage = "home_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
  };
}
