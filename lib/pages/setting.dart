import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool valueblue = false;
  bool valueamber = false;
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
            "Setting",
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
        body: Column(
          children: [
            SwitchListTile(
              value: valueblue,
              onChanged: (val) {
                setState(() {
                  valueblue = val;
                });
              },
              title: Text(
                "Color blue",
                style: TextStyle(
                  color: valueblue == true ? Colors.blue : Colors.black,
                ),
              ),
              subtitle: Text("Color"),
            ),
            SwitchListTile(
              value: valueamber,
              onChanged: (val2) {
                setState(() {
                  valueamber = val2;
                });
              },
              title: Text(
                "Color amber",
                style: TextStyle(
                  color: valueamber == true ? Colors.amber : Colors.black,
                ),
              ),
              subtitle: Text("Color"),
            ),
          ],
        ));
  }
}

Widget appBarColorGradient() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: LinearGradient(colors: [
          Colors.yellow[600],
          Colors.red,
        ])),
  );
}
