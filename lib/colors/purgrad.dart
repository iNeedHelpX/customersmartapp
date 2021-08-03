import 'package:flutter/material.dart';

//a purple gradient. Not in use..yet!!
LinearGradient purGrad() {
  return LinearGradient(
    colors: [
      Color.fromARGB(255, 132, 43, 255),
      Color.fromARGB(255, 121, 94, 255),
      Color.fromARGB(255, 94, 69, 224),
      Color.fromARGB(255, 69, 5, 229),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
}
