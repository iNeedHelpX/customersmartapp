import 'package:customersmartapp/colors/cominggrad.dart';
import 'package:flutter/material.dart';

//login button at bottom of the box page. Its a rounded corner button. says login in the middle
class LoginButtonContainer extends StatelessWidget {
  final String loginButton;
  const LoginButtonContainer({required this.loginButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      //this keeps text aligned to center of button
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      // height: 50,
      // width: 78,
      decoration: BoxDecoration(
        gradient: upComing(),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Text(
        this.loginButton,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
