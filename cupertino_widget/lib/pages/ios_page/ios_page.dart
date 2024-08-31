import 'package:cupertino_widget/controllers/platform_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IOSPage extends StatefulWidget {
  const IOSPage({super.key});

  @override
  State<IOSPage> createState() => _IOSPageState();
}

class _IOSPageState extends State<IOSPage> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("WELCOME TO IOS-WORLD"),
        trailing: CupertinoSwitch(
          value: Provider.of<PlatFormController>(context).isAndroid,
          onChanged: (value) =>
              Provider.of<PlatFormController>(context, listen: false)
                  .changePlatForm(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text("HELLO IOS USERS"),
              CupertinoButton(
                child: const Text("IOS BOTTOM SHEET"),
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return CupertinoActionSheet(
                        title: const Text(
                          "FAVOURITE CITY",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        message: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          child: Text(
                            "Please Select the Best City From the\nOptions Below",
                          ),
                        ),
                        actions: [
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("SURAT"),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("AHMEDABAD"),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("RAJKOT"),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          isDestructiveAction: true,
                          child: const Text("Cancel"),
                        ),
                      );
                    },
                  );
                },
              ),
              const CupertinoActivityIndicator(
                color: CupertinoColors.activeBlue,
                radius: 20,
              ),
              CupertinoButton(
                  child: const Text("ALERT DIALOG"),
                  onPressed: () {
                    showCupertinoModalPopup(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: const Text("ALERT"),
                        actions: [
                          CupertinoButton(
                              child: const Text("SAVE"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          CupertinoButton(
                              child: const Text(
                                "BACK",
                                style: TextStyle(
                                    color: CupertinoColors.destructiveRed),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    );
                  }),
              CupertinoButton(
                child: const Icon(CupertinoIcons.calendar),
                onPressed: () {
                  CupertinoDatePicker(
                    onDateTimeChanged: (value) {
                      return;
                    },
                    initialDateTime: date,
                    mode: CupertinoDatePickerMode.date,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
