import 'package:customersmartapp/Views/login/loginbutton.dart';
import 'package:customersmartapp/colors/colors.dart';
import 'package:customersmartapp/colors/gradient1.dart';
import 'package:customersmartapp/colors/purgrad.dart';
import 'package:flutter/material.dart';

//top appbar. Its a pink gradient

AppBar pinkAppBar(BuildContext context) {
  return AppBar(
    leading: Padding(
      padding: EdgeInsets.all(5),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: IconButton(
          icon: Icon(
            Icons.shopping_bag_rounded,
            color: Colors.purpleAccent[60],
          ),
          onPressed: () {
            bottomSheet(context);
          },
        ),
      ),
    ],

    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: grad1(),
        ),
      ),
    ),
    elevation: 16,
    shadowColor: textshadow1,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    //set size of appbar. This is sort of big
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Stack(
        children: [
          Text(
            "Online Shop",
            style: TextStyle(
              fontFamily: 'asian',
              color: textbg,
              fontWeight: FontWeight.w500,
              fontSize: 45,
              shadows: [
                Shadow(
                  offset: Offset(6.0, 8.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(255, 25, 25, 25).withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

//bottom sheet pop up, this is the sheet that pops up when icon in top right corner gets pressed!

Future<dynamic> bottomSheet(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: bg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      context: context,
      builder: (BuildContext context) {
        //the pink/purple container that hosts the login
        return Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
          height: 600,
          decoration: BoxDecoration(
            gradient: purGrad(),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              // EmailText(
              //   emailQue: 'enter email here',
              // ),
              // SizedBox(height: 10),
              // PasswordText(passwordQue: 'enter password'),
              SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text('login with Google')),
              LoginButtonContainer(loginButton: 'Login with google'),
              SizedBox(height: 10),
              LoginButtonContainer(loginButton: 'Login with facebook')
            ],
          ),
          //decoration: BoxDecoration(gradient: gradSheet()),
        );
      });
}
