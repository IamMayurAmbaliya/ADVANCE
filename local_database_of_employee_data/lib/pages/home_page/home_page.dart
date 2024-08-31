import 'package:local_database_of_employee_data/controllers/dbcontroller.dart';
import 'package:local_database_of_employee_data/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DbController mutable = Provider.of<DbController>(context);
    DbController unMutable = Provider.of<DbController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "EMPLOYEE DATA",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: mutable.allEmployees.isEmpty
          ? const Center(
              child: Text("No Data"),
            )
          : ListView.builder(
              itemCount: mutable.allEmployees.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  child: Text(
                    "${mutable.allEmployees[index].id}",
                  ),
                ),
                title: Text(
                  mutable.allEmployees[index].name,
                ),
                subtitle: Text(
                  mutable.allEmployees[index].email,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          unMutable.insertData(
            employee: Employee(
              id: 1,
              name: "PARTH",
              contact: "5647382910",
              email: "parth@gmail.com",
            ),
          );
        },
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}
