import 'package:counter_app_using_provider/headers.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterController(),
      child: const MyApp(),
    ),
  );
}
