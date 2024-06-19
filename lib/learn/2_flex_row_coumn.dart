// Expand widgets with flex on row/column
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

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      // start: Expended widget
      // 1. wrap with row and column widget
      body: Row(
        // keeping itr into center
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // maintainng the ratio of the screen
          Expanded( // 1st container, Expanded used to equal ratio, flex: used for dividing the screen into defined ration
            flex: 2,
            child: Container(
              width: 50,
              height: 80,
              color: Colors.red,
            ),
          ),
          // adding 3 more containers
          Expanded(
            flex: 4,
            child: Container(
              width: 50,
              height: 80,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 50,
              height: 80,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 80,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}