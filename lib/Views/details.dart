import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// the detail view page that is the by product of clicking through on a listing from the shopping page
class DetailsView extends StatelessWidget {
  final String imgUrl;

  const DetailsView({
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        child: Image(
                            image: NetworkImage(imgUrl), fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.backspace,
                color: Color.fromARGB(255, 247, 0, 97),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
