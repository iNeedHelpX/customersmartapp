import 'package:flutter/material.dart';

//  the action button on the appbar. NOT IN USE
Padding buttonAction() {
  return Padding(
      padding: const EdgeInsets.all(15.0),
      child: IconButton(
        icon: Icon(
          Icons.shopping_bag_rounded,
          color: Colors.purpleAccent[60],
        ),
        onPressed: () {},
      ));
}
