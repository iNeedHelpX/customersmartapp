import 'package:flutter/material.dart';

//the pink-purple gradient app bar color
LinearGradient grad1() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 255, 8, 186),
    Color.fromARGB(255, 200, 0, 241),
  ], begin: Alignment.bottomCenter, end: Alignment.topCenter);
}
