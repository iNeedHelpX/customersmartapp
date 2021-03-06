import 'package:customersmartapp/Views/containers/comingsoon.dart';
import 'package:flutter/material.dart';

// the groceries page!
class GroceryShop extends StatefulWidget {
  GroceryShop({Key? key}) : super(key: key);

  @override
  _GroceryShopState createState() => _GroceryShopState();
}

class _GroceryShopState extends State<GroceryShop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComingSoon(
            text: 'Groceries coming soon',
            subtext: 'delivery in 15 mins to your door'),
      ],
    );
  }
}
