import 'package:db_miner_quotes_app_pr_7/controllers/quotecontroller.dart';
import 'package:db_miner_quotes_app_pr_7/controllers/themecontroller.dart';
import 'package:db_miner_quotes_app_pr_7/headers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuoteController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
