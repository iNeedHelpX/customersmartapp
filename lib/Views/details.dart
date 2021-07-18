import 'package:customersmartapp/Views/containers/custcontainer.dart';
import 'package:customersmartapp/Views/containers/detailsbox.dart';
import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  final String imgUrl;

  const DetailsView({required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      child:
                          Image(image: NetworkImage(imgUrl), fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SafeArea(
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.backspace,
                  color: Color.fromARGB(255, 247, 0, 97),
                )),
          ),
          DetailsBox(
            size: size,
            availSize: '2',
            description: 'box',
            name: 'yes',
          ),
        ],
      ),
    );
  }
}
