import 'package:flutter/material.dart';

class HelloYou extends StatefulWidget {
  @override
  State<HelloYou> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Column(
      children: <Widget>[
        TextField(
            decoration: InputDecoration(
              hintText: 'Please enter your name',
              labelText: 'Distance',
              labelStyle: textStyle
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
