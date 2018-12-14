import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Text(sayHello(), style: TextStyle(
          fontSize: 24.0,
          fontFamily: 'Manrope'
        ),),
        MaterialButton(child: Text("בניין 47")),
        RaisedButton(
          child: Text("בניין 48"),
        ),
        IconButton(icon: Text("בניין 49")),
        MaterialButton(child: Text("בניין 47")),
        MaterialButton(child: Text("בניין 47")),
        MaterialButton(child: Text("בניין 47")),
      ],
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;

    if (hour < 12) {
      hello = "Good morning";
    } else if (hour < 18) {
      hello = "Good afternoon";
    } else {
      hello = "Good evening";
    }

    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It's now " + hour.toString() + ":" + minutes + "\n" + hello;
  }
}
