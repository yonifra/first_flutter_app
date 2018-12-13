import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
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
}
