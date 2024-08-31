import 'dart:math';

import 'package:cupertino_widget/controllers/platform_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndroidPage extends StatefulWidget {
  const AndroidPage({super.key});

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WELCOME TO ANDROID-WORLD"),
        // title: Platform.isAndroid ? Text("Android") : Text("Ios"),
        actions: [
          Switch(
            value: Provider.of<PlatFormController>(context).isAndroid,
            onChanged: (value) =>
                Provider.of<PlatFormController>(context, listen: false)
                    .changePlatForm(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text("HELLO ANDROID USERS"),
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const Center(
                    child: Text("Welcome to Android BottomSheet"),
                  ),
                );
              },
              child: const Text("ANDROID BOTTOM SHEET"),
            ),
            const CircularProgressIndicator(
              color: Colors.blueAccent,
              strokeWidth: 5,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("ALERT"),
                      actions: [
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          // style: ButtonStyle(
                          //   backgroundColor:
                          //       MaterialStateProperty.all(Colors.black38),
                          // ),
                          child: const Text("SAVE"),
                        ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pop(context);
                        //   },
                        //   child: const Text("SAVE"),
                        // ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("BACK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("ANDROID ALERT DIALOG"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2050),
                    );

                    if (selectedDate != null) {
                      return setState(
                        () {
                          date = selectedDate;
                          print(date);
                        },
                      );
                    }
                  },
                  child: const Text("Android DatePicker"),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 80,
                  // color: Colors.green,
                  child: Center(
                    child: Text("${date.day}/${date.month}/${date.year}"),
                    // child: Text("$date"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? selectedTime = await showTimePicker(
                      initialTime: time,
                      context: context,
                      // builder: (context, child) {
                      //   return Container();
                      // },
                    );

                    if (selectedTime != null) {
                      return setState(
                        () {
                          time = selectedTime;
                          print(time);
                        },
                      );
                    }
                  },
                  child: const Text("Android TimePicker"),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 80,
                  // color: Colors.green,
                  child: Center(
                    // child: Text("${date.day}/${date.month}/${date.year}"),
                    child: Text(
                      "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
