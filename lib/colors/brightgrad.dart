import 'package:flutter/material.dart';

// not in use.. yet!

LinearGradient brightGrad() {
  return LinearGradient(
    colors: [
      Color.fromARGB(255, 198, 254, 113),
      Color.fromARGB(255, 224, 84, 255),
      Color.fromARGB(255, 255, 13, 85),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
