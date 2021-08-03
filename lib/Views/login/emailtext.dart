import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/material.dart';

//handle email
class EmailText extends StatefulWidget {
  final String emailQue;
  const EmailText({
    required this.emailQue,
  });

  @override
  _EmailTextState createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 25,
      keyboardType: TextInputType.emailAddress,
      // onSaved: (input) => loginRequestModel.email = input,
      validator: (input) =>
          !input!.contains('@') ? "Email Id should be valid" : null,
      decoration: new InputDecoration(
        hintStyle: TextStyle(color: text4, fontWeight: FontWeight.w500),
        hintText: widget.emailQue,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.amber.withOpacity(0.2),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        prefixIcon: Icon(
          Icons.email,
          color: Color.fromARGB(255, 68, 33, 149),
        ),
      ),
    );
  }
}
