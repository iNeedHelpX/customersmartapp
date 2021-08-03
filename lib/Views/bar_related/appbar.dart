import 'package:customersmartapp/colors/colors.dart';
import 'package:customersmartapp/colors/gradient1.dart';
import 'package:customersmartapp/colors/gradsheet.dart';
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
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 600,
                      decoration: BoxDecoration(
                        gradient: gradSheet(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    );
                  });
            },
          ))
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
