import 'package:flutter/material.dart';

//gradient for the upcoming sign
LinearGradient upComing() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 56, 56, 73),
    Color.fromARGB(255, 109, 109, 156)
  ], begin: Alignment.bottomRight, end: Alignment.topLeft);
}
