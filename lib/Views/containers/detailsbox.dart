import 'package:customersmartapp/colors/grad2.dart';
import 'package:flutter/material.dart';

//not currently being used right now
class DetailsBox extends StatelessWidget {
  final String description, name, availSize;
  const DetailsBox(
      {Key? key,
      required this.size,
      required this.name,
      required this.availSize,
      required this.description})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.only(
            top: size.width * 0.55,
            left: 50.0,
            right: 50.0,
            bottom: size.width * 0.28,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.fromLTRB(12, 10, 12, 20),
            width: size.width - 120,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              gradient: grad2(),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    availSize,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(255, 242, 8, 109),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.remove,
                        ),
                        Text('add to cart'),
                        Icon(Icons.add_box)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
