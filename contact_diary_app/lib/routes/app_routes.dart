import 'package:contact_diary_app/headers.dart';
import 'package:contact_diary_app/screens/hidden_contact_page/hidden_contact_page.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "/";
  String contactPage = "contact_page";
  String hiddenContactPage = "hidden_contact_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "contact_page": (context) => ContactPage(),
    "hidden_contact_page": (context) => const HiddenContactPage(),
  };
}
