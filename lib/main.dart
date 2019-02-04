import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  var leftPad = 45.0;

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
                  child: Row(
                    children: [
                      Icon(Icons.airplay),
                      Text(
                        'Yoni Fraimorice',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.clear),
                      Padding(
                        child: Text("First Item"),
                        padding: EdgeInsets.only(left: leftPad),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.access_alarm),
                      Padding(
                        child: Text("Second Item"),
                        padding: EdgeInsets.only(left: leftPad),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.add_alert),
                      Padding(
                        child: Text("Third Item"),
                        padding: EdgeInsets.only(left: leftPad),
                      )
                    ],
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
