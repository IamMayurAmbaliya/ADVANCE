import 'package:bhagwat_geeta/headers.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataController(),
      child: const MyApp(),
    ),
  );
}
