import 'package:flutter/material.dart';
import 'package:resume_builder_app/utills/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: w,
                color: const Color(0xff6054C1),
                alignment: Alignment.center,
                child: const Text(
                  "Resume Buider",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(w * 0.1),
                    topRight: Radius.circular(w * 0.1),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Spacer(),
                    Image(
                      image: const AssetImage(
                        "assets/images/box.png",
                      ),
                      height: h * 0.1,
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    const Text(
                      "No Resume + Please create a new Resume",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    const Spacer(),
                    FloatingActionButton(
                      backgroundColor: const Color(0xff6054C1),
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.build_page);
                      },
                      child: const Icon(Icons.add, size: 40),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
