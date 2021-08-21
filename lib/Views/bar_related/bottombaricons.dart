import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//the navbar icons
List<Widget> listBarIcons() {
  return <Widget>[
    Icon(
      Icons.fastfood_rounded,
      size: 30,
      color: Colors.black,
    ),
    Icon(
      Icons.local_mall,
      size: 30,
      color: Colors.black,
    ),
    Icon(
      FontAwesomeIcons.carrot,
      size: 30,
      color: Colors.black,
    )
  ];
}
