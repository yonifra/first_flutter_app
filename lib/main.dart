import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Manrope'),
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My cool Flutter app'),
        ),
        body: Home()
      ),
    );
  }
}
