// grid view
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

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple, Colors.orange, Colors.pink];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Dashboard"),
      ),
      // start: Grid View

      body: Column(
        children: [
          Container(
            height: 450,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  color: colors[0],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[1],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[2],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[3],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[4],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[5],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[6],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[0],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 300,
            child: GridView.extent(maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  color: colors[0],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[1],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[2],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[3],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[4],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[5],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[6],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
                Container(
                  color: colors[0],
                  child: Column(
                    children: [
                      Text('aghori'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}