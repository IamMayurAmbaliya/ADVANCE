import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/Screens/Setting_Screen/Setting_Screen.dart';
import 'package:provider/provider.dart';

import '../Models/Screen_Model.dart';
import '../Providers/global_Provider.dart';
import '../Screens/Calls_Screen/Call_Screen.dart';
import '../Screens/Chat_Screen/Chat_Screen.dart';
import '../Screens/Contact_Screen/Contact_Screen.dart';

class AdaptiveTabBar extends StatelessWidget {
  const AdaptiveTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTrue = Provider.of<SwitchProvider>(context);
    final providerFalse = Provider.of<SwitchProvider>(context, listen: false);

    return (Provider.of<SwitchProvider>(context).isAndroid)
        ? const TabBarView(children: [
            PersonAddTab(),
            ChatScreen(),
            CallScreen(),
            SettingScreen(),
          ])
        : Container();
  }
}
