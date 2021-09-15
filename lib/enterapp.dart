import 'package:customersmartapp/home.dart';
import 'package:customersmartapp/route_generator.dart';
import 'package:flutter/material.dart';

// the entry point of the app. Leads into the homepage
class EnterPoint extends StatefulWidget {
  EnterPoint({Key? key}) : super(key: key);

  @override
  _EnterPointState createState() => _EnterPointState();
}

class _EnterPointState extends State<EnterPoint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Home(),
      ),
    );
  }
}
