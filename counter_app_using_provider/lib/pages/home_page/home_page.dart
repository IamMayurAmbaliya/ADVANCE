import 'package:counter_app_using_provider/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      appBar: AppBar(
        title: const Text(
          "HomePage",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.instance.demoPage,
              );
            },
            icon: const Icon(
              Icons.next_plan_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Press + Or - To Increase And Decrease Counter",
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<CounterModal>(
                builder: (context, provider, child) {
                  return Text(
                    "${provider.getCounter}",
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterModal>(context, listen: false).increment();
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              if (context.read<CounterModal>().getCounter > 0) {
                Provider.of<CounterModal>(context, listen: false).decrement();
              }
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
