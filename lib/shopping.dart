import 'package:customersmartapp/Views/containers/custcontainer.dart';
import 'package:flutter/material.dart';

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
          CustomContainer(
            imgurl:
                'https://cdn.shopify.com/s/files/1/0440/3629/2757/products/led_mask_girl_600x.gif?v=1603137689',
            name: "Fiber Optic Mask",
            deliverfee: '\$25',
          ),
          SizedBox(
            height: 20,
          ),
          CustomContainer(
              imgurl:
                  'https://sc04.alicdn.com/kf/Hbaec220b2abb46f9a566412a8cd901d9x.jpg',
              name: 'Sex doll',
              deliverfee: "\$999"),
          SizedBox(
            height: 20,
          ),
          CustomContainer(
              imgurl:
                  'https://sc04.alicdn.com/kf/Hbaec220b2abb46f9a566412a8cd901d9x.jpg',
              name: 'Sex doll',
              deliverfee: "\$999"),
          SizedBox(
            height: 20,
          ),
          CustomContainer(
              imgurl:
                  'https://sc04.alicdn.com/kf/Hea2914ce4f9f4d4daf2be954652a4839g.jpg',
              name: "Menstrual cup",
              deliverfee: "\$10"),
          SizedBox(
            height: 20,
          ),
          CustomContainer(
              imgurl:
                  'https://sc04.alicdn.com/kf/Haf56bae68bb945759b9cbca880af0e7ez.jpg',
              name: 'Frog ring',
              deliverfee: "\$10")
        ],
      ),
    ));
  }
}
