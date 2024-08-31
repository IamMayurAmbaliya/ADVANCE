import 'package:provider/provider.dart';
import 'package:sqlite_local_database/controllers/dbController.dart';
import 'package:sqlite_local_database/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    DbController listanble = Provider.of<DbController>(context);
    DbController unListanble =
        Provider.of<DbController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

// int id = 0;
// String name = "";
// String contact = "";
// String email = "";
//
// List allUserData = [
//   'Id',
//   'Name',
//   'Email',
//   'Contact',
// ];

// showDialog(
//   context: context,
//   builder: (context) => AlertDialog(
//     title: const Text("Add User Details..."),
//     actions: [
//       ...List.generate(
//         allUserData.length,
//         (index) => TextFormField(
//           onChanged: (val) {
//             if (index == 0) id = val as int;
//             if (index == 1) name = val;
//             if (index == 2) contact = val;
//             if (index == 3) email = val;
//           },
//           decoration: InputDecoration(
//             labelText: allUserData[index],
//           ),
//         ),
//       ),
//       OutlinedButton(
//         onPressed: () {
//           listanble.insertData(
//             user: User(
//               id: id,
//               name: name,
//               contact: contact,
//               email: email,
//             ),
//           );
//           Navigator.pop(context);
//         },
//         child: const Text(
//           'Save',
//         ),
//       ),
//     ],
//   ),
// );

// body: ListView.builder(
//   itemBuilder: (context, index) => ListTile(
//     leading: Text(listanble.allUsersData[index].name),
//   ),
// ),
// body: PageView.builder(
//   itemBuilder: (context, index) => index == 0
//       ? listanble.allUsersData.isEmpty
//           ? Center(
//               child: ListView.builder(
//                 itemBuilder: (context, index) => const ListTile(
//                   tileColor: Colors.grey,
//                 ),
//               ),
//             )
//           : ListView.builder(
//               itemBuilder: (context, index) => ListTile(
//                 leading: Text(
//                   Provider.of<DbController>(context)
//                       .allUsersData[index]
//                       .name,
//                 ),
//               ),
//             )
//       : Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 onChanged: (val) {
//                   // if (val.isEmpty) {
//                   //   listanble.allSearchData.clear();
//                   // } else {
//                   //   listanble.searchData(value: val);
//                   // }
//                 },
//                 decoration: const InputDecoration(
//                   labelText: 'Search Value',
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 // itemCount: listanble.allSearchData.length,
//                 itemBuilder: (context, index) => ListTile(
//                     // title: Text(listanble.allSearchData[index].name),
//                     ),
//               ),
//             ),
//           ],
//         ),
// ),
