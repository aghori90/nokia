// creating basic app and adding decoration to the app
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
      body: Container(
        // defining the main container size
        width: double.infinity,
        height: double.infinity,
        // color: Colors.blue.shade50,
        child: Center(
          // wraping the child container under centre widget
          child: Container(
            width: 150,
            height: 150,
            // color: Colors.blueGrey,
            //  adding decoration class
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                // borderRadius: BorderRadius.circular(10), // for rounded corner removed for circular shape : 57 line error
                border: Border.all(
                    color: Colors.black,
                    width: 2
                ),
                boxShadow: [ // for shadow
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      spreadRadius: 2
                  )
                ],
                shape: BoxShape.circle // for circular shape
            ),
          ),
        ),
      ),
    );
  }
}