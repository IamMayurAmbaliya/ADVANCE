import 'package:fb_chat_app/extensions.dart';
import 'package:fb_chat_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffae392),
      appBar: AppBar(
        backgroundColor: const Color(0xfffae392),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.instance.homePage);
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.instance.notificationPage);
            },
            icon: const Icon(
              Icons.notifications_active,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                70.height,
                const Text(
                  "TalkDM",
                  style: TextStyle(
                    fontFamily: 'hurricane',
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                  ),
                ),
                30.height,
                const CircleAvatar(
                  radius: 70,
                  child: Image(
                    image: AssetImage(
                      "assets/images/talk.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                100.height,
                const Text(
                  "Let’s talk with new friends",
                  style: TextStyle(
                    fontFamily: 'realNova',
                    fontSize: 25,
                  ),
                ),
                50.height,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xff1a5d1a),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.instance.loginPage);
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        wordSpacing: 5,
                        fontFamily: 'realNova',
                        color: Color(0xfff1c93b),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
