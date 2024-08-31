import 'package:counter_app/headers.dart';
import 'package:counter_app/modal/counter_modal.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                builder: (context, CounterModal, child) {
                  return Text(
                    "${CounterModal.getCounter}",
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              )
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
