import 'package:customersmartapp/colors/cominggrad.dart';
import 'package:flutter/material.dart';

class LoginButtonContainer extends StatelessWidget {
  final String loginButton;
  const LoginButtonContainer({required this.loginButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      //this keeps text aligned to center of button
      alignment: Alignment.center,
      height: 50,
      width: 78,
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
