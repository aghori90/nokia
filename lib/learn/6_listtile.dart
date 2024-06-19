// ListTile included with ListView Builder
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
    var arrNames = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      // start: ListView with ListView Builder basic design
      body: ListView.separated(itemBuilder: (context, index){
        // start: ListTile
        return ListTile(
          title: Text(arrNames[index]),
          subtitle: Text("Number"),
          leading: Text("${index+1}"), // showing side numbers
          trailing: Icon(Icons.arrow_forward),
        );
        // end: ListTile
      }, separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 20, thickness: 2, color: Colors.orange, indent: 10, endIndent: 10,);
      }, itemCount: 10),
    );
  }
}