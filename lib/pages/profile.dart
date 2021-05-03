import 'package:flutter/material.dart';

import 'setting.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        flexibleSpace: appBarColorGradient(),
        title: appBarTitle('Profile'),
      ),
      //  SingleChildScrollView لتجنب مشكلة الاحجام في الامليتور اثناء التصحيح تم وضع

      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              avtarLogo(context),
              SizedBox(
                height: 30,
              ),
              buildContainerText(
                title: "Name :.......",
                context: context,
                colors: Colors.black,
                colo: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              buildContainerText(
                title: "Age :.......",
                colors: Colors.black,
                context: context,
                colo: Colors.blue[700],
              ),
              SizedBox(
                height: 10,
              ),
              buildContainerText(
                title: "Education :.......",
                colors: Colors.black,
                context: context,
                colo: Colors.greenAccent[400],
              ),
              SizedBox(
                height: 10,
              ),
              buildContainerText(
                title: "Adress :.......",
                colors: Colors.red,
                context: context,
                colo: Colors.yellow[600],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "--< Thanks DSC Al-Azhar University >--",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.teal[300],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //The Widget
//==============================================================================

  Row appBarTitle(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.supervised_user_circle_outlined,
          color: Colors.white,
          size: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: TextStyle(
            shadows: [
              Shadow(color: Colors.black, offset: Offset(1, 1)),
            ],
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  Container buildContainerText(
      {BuildContext context, String title, Color colo, Color colors}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.80,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: colo,
            spreadRadius: 2,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: colo,
          shadows: [
            Shadow(
              color: colors,
              offset: Offset(1, 1),
            )
          ],
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
      ),
    );
  }

  Container avtarLogo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(5, 7),
            blurRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(100),
        color: Colors.amber,
      ),
      child: Column(
        children: [
          Icon(
            Icons.account_circle_rounded,
            size: 200,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
