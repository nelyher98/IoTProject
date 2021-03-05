//import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:IoTProject/main_page.dart';

class CurrentScreen extends StatefulWidget {
  @override
  _CurrentScreenState createState() => _CurrentScreenState();
}

class _CurrentScreenState extends State<CurrentScreen> {

  bool _temperature = false;
  bool _heartRate = false;
  bool _isSwitched = false;

  Widget _MainIcon(){
    return Center(
      child: Column(
          children: <Widget>[
            Column(
                children: <Widget>[
                  Container(
                      child:Image.asset(
                        "images/person-male.png",
                        height: 150.0,
                        width: 150.0,
                      )
                  ),
                ]),
          ]),
    );
  }

  Widget _TemperatureCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _temperature,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _temperature = value;
                });
              },
            ),
          ),
          Text(
            'Temperature',

          ),
        ],
      ),
    );
  }

  Widget _HeartRateCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _heartRate,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _heartRate = value;
                });
              },
            ),
          ),
          Text(
            'Heart Rate',

          ),
        ],
      ),
    );
  }


  Widget _SwichtOffOn() {
    return Container(
      height: 55.0,
      child: Row(
        children: <Widget>[
          Center(
            child: FlutterSwitch(
              activeText: "OPEN",
              inactiveText: "CLOSE",
              activeColor: Colors.lightGreen,
              inactiveColor: Colors.red,
              toggleColor: Colors.green,
              value: _isSwitched,
              width: 105.0,
              height: 30.0,
              valueFontSize: 12.0,
              toggleSize: 28.0,
              borderRadius: 30.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  _isSwitched = val;
                });
              },
      ),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _TemperatureCheckbox(),
                      _HeartRateCheckbox(),
                      _MainIcon(),
                      _SwichtOffOn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}