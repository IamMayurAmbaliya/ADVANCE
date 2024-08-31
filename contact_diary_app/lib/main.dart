import 'package:contact_diary_app/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactController(),
        ),
        ChangeNotifierProvider(
          create: (context) => StepperController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
