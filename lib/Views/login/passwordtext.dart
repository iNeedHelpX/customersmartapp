import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/material.dart';

//handle password. not in use
class PasswordText extends StatefulWidget {
  final String passwordQue;

  PasswordText({required this.passwordQue});

  @override
  _PasswordTextState createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).accentColor),
      keyboardType: TextInputType.text,
      maxLength: 25,
      //onSaved: (input) => loginRequestModel.password = input,
      validator: (input) => input!.length < 3
          ? "Password should be more than 3 characters"
          : null,
      obscureText: hidePassword,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: text4, fontWeight: FontWeight.w500),
        hintText: "Password here",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.amber.withOpacity(0.2)),
        ),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        prefixIcon: Icon(
          Icons.lock,
          color: Color.fromARGB(255, 68, 33, 149),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
          color: Color.fromARGB(255, 255, 227, 121),
          icon: Icon(hidePassword ? Icons.visibility : Icons.visibility),
        ),
      ),
    );
  }
}
