import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class RoundedButton extends StatelessWidget {
  // create a constructor for the class
  final String btnName;
  final Color? btnColor; // ? is used to check the null value
  final TextStyle? btnTextStyle;
  final Icon? btnIcon;
  final VoidCallback? callback;
  RoundedButton( // constructor for the class
        { this.btnName = "Button",
        this.btnColor = Colors.blue,
        this.btnTextStyle,
        this.btnIcon,
        this.callback,
        required MaterialColor bgColor});

  // get icon => null;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!(); // ! is used to check the null value
      },
      child: btnIcon !=null? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ // children for the row
          btnIcon!,
          Container(
            width: 12,
          ),
          Text(
            btnName,
            style: btnTextStyle,
          ),
        ],
      ) : Text(
        btnName,
        style: btnTextStyle,
      ),
      style: ButtonStyle( // style for the button
        backgroundColor: MaterialStateProperty.all<Color>(btnColor!),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}