import 'package:counter_app/headers.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              20,
            ),
          ),
        ),
        title: const Text(
          "DemoPage",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.large(
              onPressed: () {},
              child: const Icon(
                Icons.back_hand,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
