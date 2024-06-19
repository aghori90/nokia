// Adding Text Input Widgets(TextFiled, Text, Button, etc.
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
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Dashboard"),
      ),
      // start: TextFileds
      // add textfield with different style
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                // enabled: false,
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: mTextStyle11(),
                  hintText: "Enter your username",
                  hintStyle: mTextStyle11(),
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.deepOrange, width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blueGrey, width: 2)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue, width: 2)
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                // enabled: false,
                decoration: InputDecoration(
                  labelText: "Mobile",
                  labelStyle: mTextStyle11(),
                  hintText: "Enter your Mobile Number",
                  hintStyle: mTextStyle11(),
                  prefixIcon: Icon(Icons.mobile_friendly),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.deepOrange, width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blueGrey, width: 2)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue, width: 2)
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: passwordController,
                obscureText: true,
                // enabled: false,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: mTextStyle11(),
                  hintText: "Enter your Password",
                  hintStyle: mTextStyle11(),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: (){},
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.deepOrange, width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blueGrey, width: 2)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue, width: 2)
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: (){
                  String username = usernameController.text.toString();
                  String password = passwordController.text;
                  String phone = phoneController.text;
                  print("Username: {username: $username, password: $password, mobile: $phone}");
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}