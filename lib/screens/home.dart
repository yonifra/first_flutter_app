import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Text(
          sayHello(),
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          sayHello(),
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        MaterialButton(child: Text("Building 47"), onPressed: () => {}),
        RaisedButton(child: Text("Building 48"), onPressed: () => {}),
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

    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It's now " + hour.toString() + ":" + minutes + "\n" + hello;
  }
}
