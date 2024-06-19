// wrap widget
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

// # note for custom widget: goto lib/widgets/rounded_button.dart
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 50,
              child: RoundedButton(
                  btnName: 'Download',
                  btnIcon: Icon(Icons.download),
                  bgColor: Colors.blue,
                  callback: () {
                    print("Downloaded!");
                  },
                  btnTextStyle: mTextStyle11(
                    textColor: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 130,
              height: 50,
              child: RoundedButton(
                  btnName: 'Register',
                  btnIcon: Icon(Icons.person_2_outlined),
                  bgColor: Colors.blue,
                  callback: () {
                    print("Registered!");
                  },
                  btnColor: Colors.green,
                  btnTextStyle: mTextStyle11(
                    textColor: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 130,
              height: 50,
              child: RoundedButton(
                  btnName: 'Login',
                  btnIcon: Icon(Icons.lock),
                  bgColor: Colors.blue,
                  callback: () {
                    print("Logged in!");
                  },
                  btnColor: Colors.redAccent,
                  btnTextStyle: mTextStyle11(
                    textColor: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
          ],
        ),


      ),
    );
  }
}