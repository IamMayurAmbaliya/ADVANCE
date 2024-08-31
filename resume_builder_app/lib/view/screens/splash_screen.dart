import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder_app/utills/resume_attributes.dart';
import 'package:resume_builder_app/utills/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacementNamed(Routes.home_page);
      },
    );
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Container(
      alignment: Alignment.center,
      color: const Color(0xff6054C1),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image(
            image: AssetImage("assets/images/Start.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "RESUME BUILDER",
            style: TextStyle(
                fontSize: h * 0.04,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          LinearProgressIndicator(
            minHeight: 5,
            color: Colors.indigo,
          ),
        ],
      ),
    );
    //Container(
    //   alignment: Alignment.center,
    //   color: const Color(0xff1a0db3),
    //
    //
    //
    // );
  }
}
