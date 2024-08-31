import 'package:counter_application_using_provider/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                20,
              ),
            ),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          titleSpacing: 2,
          centerTitle: true,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
        ),
      ),
      darkTheme: ThemeData().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lime,
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.instance.routes,
    );
  }
}
