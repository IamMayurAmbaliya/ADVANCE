import 'package:counter_application_using_provider/headers.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Navigation Demo",
        ),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          color: Colors.grey,
          child: Center(
            child: Consumer<CounterController>(
              builder: (context, provider, child) => Text(
                "${provider.counterModal.getCounter}",
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
