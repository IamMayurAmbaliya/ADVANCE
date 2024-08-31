import 'package:counter_app_using_provider/headers.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Demo"),
      ),
      body: Center(
        child: Container(
            height: 50,
            width: 200,
            color: Colors.grey,
            child: Center(
              child: Consumer<CounterModal>(
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
            )),
      ),
    );
  }
}

// backgroundColor: const Color(0xFFfefcff),
// body: Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: SizedBox(
//       width: double.infinity,
//       height: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Consumer<CounterModal>(
//                   builder: (context, CounterModal, child) {
//                 return Text(
//                   '${CounterModal.getCounter}',
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 );
//               }),
//               const Text(
//                 "-- Total",
//                 style:
//                     TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 100,
//           ),
//           SizedBox(
//             width: double.infinity,
//             child: Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Provider.of<CounterModal>(context, listen: false)
//                         .decrement();
//                   },
//                   child: Container(
//                     height: 60,
//                     width: 60,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(
//                             width: 1, color: const Color(0xFF716f72))),
//                     child: const Icon(Icons.remove),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Flexible(
//                   child: Container(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     height: 60,
//                     width: double.maxFinite,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: GestureDetector(
//                       onTap: () {},
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Icon(Icons.skip_previous,
//                               color: Color(0xFFfefeff)),
//                           Text(
//                             "Prev Page",
//                             style: TextStyle(
//                                 fontSize: 20, color: Color(0xFFfefeff)),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       )),
// ),
