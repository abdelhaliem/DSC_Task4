import 'package:flutter/material.dart';
import 'setting.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        flexibleSpace: appBarColorGradient(),
        centerTitle: true,
        title: Text(
          "DashBord",
          style: TextStyle(
            shadows: [
              Shadow(color: Colors.black, offset: Offset(1, 1)),
            ],
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "DashBoard",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
