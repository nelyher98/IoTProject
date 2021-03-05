import 'package:flutter/material.dart';
import 'package:IoTProject/main_page.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white,size: 40.0),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainPage()),
    );
    },
    ),
          title: Center(child: new Text("Settings",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
            ),
          )
          ),

        ),
    );
  }
}