import 'package:customersmartapp/Views/login/signup/login.dart';
import 'package:customersmartapp/colors/colors.dart';
import 'package:customersmartapp/colors/gradient1.dart';
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
            showModalBottomSheet(
                backgroundColor: bg,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                    height: 600,
                    child: EmailText(
                      emailQue: 'enter email',
                    ),
                    //decoration: BoxDecoration(gradient: gradSheet()),
                  );
                });
          },
        ),
      )
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
    shadowColor: Color.fromARGB(255, 56, 56, 58),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    //set size of appbar
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Stack(
        children: [
          Text(
            "Online Shop",
            style: TextStyle(
              color: textbg,
              fontWeight: FontWeight.w500,
              fontSize: 35,
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
