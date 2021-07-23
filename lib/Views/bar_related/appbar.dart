import 'package:customersmartapp/colors/colors.dart';
import 'package:customersmartapp/colors/gradient1.dart';
import 'package:flutter/material.dart';

//top appbar. Its a pink gradient
AppBar myAppBar() {
  return AppBar(
    leading: Padding(
      padding: EdgeInsets.all(5),
    ),
    actions: [
      IconButton(
        padding: EdgeInsets.only(right: 20),
        onPressed: () {},
        icon: Icon(Icons.shopping_cart_outlined),
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
