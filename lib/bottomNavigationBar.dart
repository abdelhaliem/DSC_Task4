import 'pages/chat.dart';
import 'pages/dashboard.dart';
import 'pages/profile.dart';
import 'pages/setting.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curTap = 0;
  final List<Widget> screens = [
    DashBoard(),
    Chat(),
    Profile(),
    Setting(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget curScreen = DashBoard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: curScreen,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 0,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomsRowLeft(),
              bottomsRowRight(),
            ],
          ),
        ),
      ),
    );
  }

  Row bottomsRowLeft() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bottonTap(
          onPressed: () {
            setState(() {
              curScreen = DashBoard();
              curTap = 0;
            });
          },
          text: "DashBord",
          icon: Icons.dashboard_rounded,
          numcolors: 0,
        ),
        bottonTap(
          onPressed: () {
            setState(() {
              curScreen = Chat();
              curTap = 1;
            });
          },
          text: "Chat",
          icon: Icons.chat_bubble_rounded,
          numcolors: 1,
        ),
      ],
    );
  }

  Row bottomsRowRight() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bottonTap(
          onPressed: () {
            setState(() {
              curScreen = Profile();
              curTap = 3;
            });
          },
          text: "Profile",
          icon: Icons.account_circle_rounded,
          numcolors: 3,
        ),
        bottonTap(
          onPressed: () {
            setState(() {
              curScreen = Setting();
              curTap = 4;
            });
          },
          text: "Setting",
          icon: Icons.settings,
          numcolors: 4,
        ),
      ],
    );
  }

  MaterialButton bottonTap(
      {Function onPressed, IconData icon, String text, int numcolors}) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: curTap == numcolors ? Colors.red : Colors.white,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
