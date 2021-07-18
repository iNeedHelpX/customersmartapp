import 'package:customersmartapp/colors/colors.dart';
import 'package:customersmartapp/colors/cominggrad.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  final String text, subtext;
  const ComingSoon({required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      height: 80,
      width: 400,
      decoration: BoxDecoration(
        gradient: upComing(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            this.text,
            style: TextStyle(
              color: text2,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
          Text(
            this.subtext,
            style: TextStyle(color: Colors.tealAccent),
          )
        ],
      ),
    );
  }
}
