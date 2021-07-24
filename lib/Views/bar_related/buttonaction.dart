import 'package:flutter/material.dart';

Padding buttonAction() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: IconButton(
      icon: Icon(
        Icons.shopping_bag_rounded,
        color: Colors.purpleAccent[60],
      ),
      onPressed: () {
        // what happens when the button is pressed. Call to existing-cards
      },
    ),
  );
}
