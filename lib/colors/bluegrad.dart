import 'package:flutter/material.dart';

//blue gradient not yet in use
LinearGradient blueGrad() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 11, 0, 248),
    Color.fromARGB(255, 51, 46, 242),
    Color.fromARGB(255, 36, 108, 254),
    Color.fromARGB(255, 137, 226, 253),
  ], begin: Alignment.bottomRight, end: Alignment.topRight);
}
