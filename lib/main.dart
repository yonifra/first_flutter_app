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
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Home()
      ),
    );
  }
}
