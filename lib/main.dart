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
            title: Text('My cool funky app'),
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'James Dean',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [Icon(Icons.clear), Text("First Item")],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [Icon(Icons.access_alarm), Text("Second Item")],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [Icon(Icons.add_alert), Text("Third Item")],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Home()),
    );
  }
}
