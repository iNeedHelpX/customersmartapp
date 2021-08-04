import 'package:flutter/material.dart';

//a gold gradient. Not in use.. yet!

LinearGradient goldGrad() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 255, 229, 58),
    Color.fromARGB(255, 253, 241, 22),
    Color.fromARGB(255, 255, 242, 139),
    Color.fromARGB(255, 255, 220, 26),
    Color.fromARGB(255, 255, 238, 153),
  ], begin: Alignment.bottomRight, end: Alignment.topCenter);
}
