import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: text2,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).hintColor.withOpacity(0.2),
              offset: Offset(0, 10),
              blurRadius: 20,
            )
          ],
        ),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 25),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 20),
              EmailText(
                emailQue: 'Enter your Email',
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

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
      keyboardType: TextInputType.emailAddress,
      // onSaved: (input) => loginRequestModel.email = input,
      validator: (input) =>
          input!.contains('@') ? "Email Id should be valid" : null,
      decoration: new InputDecoration(
        hintText: widget.emailQue,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).accentColor.withOpacity(0.2))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor)),
        prefixIcon: Icon(
          Icons.email,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
