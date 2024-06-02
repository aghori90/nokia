import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

// basic class for application base
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
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