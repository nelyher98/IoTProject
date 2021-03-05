import 'package:flutter/material.dart';
import 'package:IoTProject/settings_screen.dart';
import 'package:IoTProject/current_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                iconSize: 30.0,
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsScreen()),
                    ),
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.access_time),child: Text('Current')),
                Tab(icon: Icon(Icons.person),child: Text('Profile')),
                Tab(icon: Icon(Icons.history),child: Text('History'))
              ],
            ),
            title: Text('IoT Project'),
          ),
          body: TabBarView(
            children: [
              CurrentScreen(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }

}