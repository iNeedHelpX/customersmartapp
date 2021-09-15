import 'package:customersmartapp/Views/containers/custcontainer.dart';
import 'package:flutter/material.dart';

//Shopping page. User lands here when opening. Listing of merch for sale
class Shopping extends StatefulWidget {
  Shopping({Key? key}) : super(key: key);

  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          ItemContainer(
              imgurl:
                  'https://cdn.shopify.com/s/files/1/0379/3698/8205/files/ezgif-4-1b11c1aa67e3_480x480.gif?v=1597420502',
              name: 'Glow Face Mask',
              deliverfee: "\$25"),
          SizedBox(
            height: 20,
          ),
          ItemContainer(
              imgurl:
                  'https://sc04.alicdn.com/kf/Hea2914ce4f9f4d4daf2be954652a4839g.jpg',
              name: "Menstrual Cup",
              deliverfee: "\$10"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
