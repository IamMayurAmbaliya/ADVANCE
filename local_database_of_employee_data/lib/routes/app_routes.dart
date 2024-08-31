import 'package:local_database_of_employee_data/headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String homePage = "home_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
  };
}
