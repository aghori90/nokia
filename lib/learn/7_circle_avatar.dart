// adding circular avatar
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
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      // start: Circular Avatar
      body: Container(
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage("https://www.w3schools.com/w3images/avatar2.png"),

        ),
      ),
    );
  }
}