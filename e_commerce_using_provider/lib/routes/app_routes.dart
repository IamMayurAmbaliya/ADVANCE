import 'package:e_commerce_using_provider/headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String homePage = '/';
  String cartPage = 'cart_page';

  Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    'cart_page': (context) => const CartPage(),
  };
}
