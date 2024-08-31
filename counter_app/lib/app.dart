import 'package:counter_app/headers.dart';
import 'package:counter_app/modal/counter_modal.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModal(),
      child: MaterialApp(
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
      ),
    );
  }
}
