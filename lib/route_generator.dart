import 'package:customersmartapp/Views/details.dart';
import 'package:customersmartapp/enterapp.dart';
import 'package:customersmartapp/food.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => EnterPoint());
      case '/foodinfo':
        return MaterialPageRoute(builder: (_) => Food());
      case '/details':

        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => DetailsView(
              imgUrl: args,
              name: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
