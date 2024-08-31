import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xff1a5d1a),
          // backgroundColor: Colors.black12,
          // child: Column(
          //   children: [
          //     Expanded(
          //       flex: 3,
          //       child: Container(
          //         color: Colors.blueAccent,
          //       ),
          //     ),
          //     Expanded(
          //       flex: 7,
          //       child: Container(
          //         color: Colors.pink,
          //       ),
          //     ),
          //   ],
          // ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("MAYUR AMBALIYA"),
                accountEmail: Text("mayur@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 7030,
                  child: Image(
                    image: AssetImage(
                      "assets/images/talk.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(color: const Color(0xfffae392)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("Home"),
                trailing: Icon(Icons.backspace_outlined),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("Home"),
                trailing: Icon(Icons.backspace_outlined),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("Home"),
                trailing: Icon(Icons.backspace_outlined),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xfffae392),
          title: const Text(
            "TalkDM",
            style: TextStyle(
              fontFamily: 'hurricane',
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          bottom: const TabBar(
            // isScrollable: true,
            indicatorColor: Colors.green,
            indicatorWeight: 5,
            tabs: [
              Tab(
                text: "Chats",
                // child: Text(
                //   "abd",
                //   style: TextStyle(
                //     fontFamily: 'realNova',
                //   ),
                // ),
              ),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              color: Color(0xff1a5d1a),
              child: const Center(child: Text("1")),
            ),
            Container(
              color: Color(0xff1a5d1a),
              child: const Center(child: Text("2")),
            ),
            Container(
              color: Color(0xff1a5d1a),
              child: const Center(child: Text("3")),
            ),
          ],
        ),
      ),
    );
  }
}
