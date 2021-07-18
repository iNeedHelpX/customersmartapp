import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:customersmartapp/account.dart';
import 'package:customersmartapp/Views/bar_related/appbar.dart';
import 'package:customersmartapp/Views/bar_related/bottombaricons.dart';
import 'package:customersmartapp/food.dart';
import 'package:customersmartapp/shopping.dart';
import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedpage = 1;

  final _pageOptions = [Food(), Shopping(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: myAppBar(),
      resizeToAvoidBottomInset: true,
      body: _pageOptions[selectedpage],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: selectedpage,
      buttonBackgroundColor: tabicon,
      color: tabicon,
      backgroundColor: bg.withOpacity(0.5),
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
