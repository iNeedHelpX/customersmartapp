import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:customersmartapp/Views/bar_related/appbar.dart';
import 'package:customersmartapp/Views/bar_related/bottombaricons.dart';
import 'package:customersmartapp/food.dart';
import 'package:customersmartapp/grocery.dart';
import 'package:customersmartapp/shopping.dart';
import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/material.dart';

//sets up the main home environment of the app
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //this directs to the shopping page
  int selectedpage = 1;

//list of pages that one can navigate to using the navbar
  final _pageOptions = [
    Food(),
    Shopping(),
    GroceryShop(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: text,
      appBar: pinkAppBar(context),
      resizeToAvoidBottomInset: true,
      body: _pageOptions[selectedpage],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

//the nav bar at the bottom
  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: selectedpage,
      buttonBackgroundColor: tabicon,
      color: tabicon,
      backgroundColor: bg.withOpacity(0.7),
      animationCurve: Curves.linearToEaseOut,
      items: listBarIcons(),
      onTap: (index) {
        setState(() {
          selectedpage =
              index; // changing selected page as per bar index selected by the user
        });
      },
    );
  }
}
