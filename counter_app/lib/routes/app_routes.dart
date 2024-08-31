import 'package:counter_app/headers.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "/";
  String demoPage = "demo_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "demo_page": (context) => const DemoPage(),
  };
}
