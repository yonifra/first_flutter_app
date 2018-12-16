import 'package:flutter/material.dart';

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
            decoration: InputDecoration(
              hintText: 'Please enter your name',
            ),
            onChanged: (String text) {
              setState(() {
                name = text;
              });
            }),
        Text(('Hello ' + name).trimRight() + '!'),
      ],
    );
  }
}
