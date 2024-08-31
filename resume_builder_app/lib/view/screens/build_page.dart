import 'package:flutter/material.dart';

import '../../utills/resume_attributes.dart';
import '../Componets/build_list_tile.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({super.key});

  @override
  State<BuildPage> createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff6054C1),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: w,
                color: const Color(0xff6054C1),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),

                    const Text(
                      "Resume Builder",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                height: h,
                width: w,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(w * 0.1),
                    topRight: Radius.circular(w * 0.1),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Create a Job Winning\nResume in Minutes!",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "assets/images/Form.png",
                            height: h * 0.15,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    // ...buildOptionList
                    //     .map(
                    //       (e) => ListTile(
                    //         leading: Image.asset(
                    //           e['image'],
                    //           height: h * 0.05,
                    //         ),
                    //         title: Text(e['title']),
                    //         trailing: const Icon(Icons.arrow_forward_ios),
                    //         onTap: () {},
                    //       ),
                    //     )
                    //     .toList()
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ...buildOptionList
                                .map(
                                  (e) => BuildListTile(
                                image: e['image'],
                                title: e['title'],
                                context: context,
                                routeName: e['route'],
                              ),
                            )
                                .toList(),
                          ],
                        ),
                      ),
                    ),
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
