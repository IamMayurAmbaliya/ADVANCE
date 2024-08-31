import 'package:api_calling_using_helpers/controller/wallpaper_controller.dart';
import 'package:api_calling_using_helpers/headers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WallPaperController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
