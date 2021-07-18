import 'package:customersmartapp/Views/containers/comingsoon.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  Food({Key? key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComingSoon(
          text: 'Food delivery coming soon!',
          subtext: 'Contact me to get listed',
        )
      ],
    );
  }
}
