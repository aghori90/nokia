// custom widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nokia/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:nokia/widgets/rounded_button.dart';

void main() {
  runApp(FlutterApp());
}

// basic class for application base
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ),
      home: DashBoardScreen(),
    );
  }
}

// class for different screens
class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  // DateTime time = DateTime.now();
  // function for button click
  // callBack() {
  //   print("Button Clicked");
  // }
  @override
  Widget build(BuildContext context) {
    // var colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple, Colors.orange, Colors.pink];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Dashboard"),
        ),
        // start:
        body: Container(
          width: double.infinity, // width of the container
          height: double.infinity,  // height of the container
          child: Wrap( // Wrap is used to wrap the children in the row
            direction: Axis.horizontal, // default
            alignment: WrapAlignment.spaceAround, // default
            spacing: 10, // space between the children
            runSpacing: 10, // space between the runs
            children: [
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.red
              ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow
              ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.green
              ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.black
              ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue
              ),Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey
              ),
            ],
          ),
        )
    );
  }
}