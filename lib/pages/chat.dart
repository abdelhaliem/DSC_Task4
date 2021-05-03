import 'package:flutter/material.dart';
import 'setting.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
            "Chat",
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
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              chatRow(
                  text: "good",
                  alignment: MainAxisAlignment.start,
                  color2: Colors.amber),
              SizedBox(
                height: 10,
              ),
              chatRow(
                  text: "how are you doing",
                  alignment: MainAxisAlignment.end,
                  color2: Colors.red),
              SizedBox(
                height: 10,
              ),
              chatRow(
                  text: "hi",
                  alignment: MainAxisAlignment.end,
                  color2: Colors.red),
              SizedBox(
                height: 10,
              ),
              chatRow(
                  text: "hi",
                  alignment: MainAxisAlignment.start,
                  color2: Colors.amber),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }

  Row chatRow({String text, MainAxisAlignment alignment, Color color2}) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: alignment,
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2, 2))],
              borderRadius: BorderRadius.circular(30),
              color: color2),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
