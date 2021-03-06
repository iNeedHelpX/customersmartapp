import 'package:customersmartapp/colors/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_boxicons/flutter_boxicons.dart';

//the container that shows item deets on the main shopping pages
class ItemContainer extends StatefulWidget {
  // final String deliveryfee;

  ItemContainer({
    required this.imgurl,
    required this.name,
    //this is the item fee not delivery per se!
    required this.deliverfee,
  });

  final String deliverfee;
  final String imgurl;
  final String name;

  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/details', arguments: widget.imgurl);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Container(
            child: Material(
              borderRadius: BorderRadius.circular(9),
              color: containerback,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image(
                          height: 200,
                          width: 400,
                          image: NetworkImage(widget.imgurl),
                          fit: BoxFit.cover),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Boxicons.bxs_purchase_tag,
                          color: Color.fromARGB(255, 119, 11, 254),
                          size: 30.0,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 10,
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 0, 161),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              widget.deliverfee,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Positioned(
                      //   right: 8,
                      //   top: 8,
                      //   child: Icon(
                      //     Icons.favorite_border,
                      //     color: Colors.white,
                      //     size: 24.0,
                      //   ),
                      // ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Candy',
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Chinatown-Toronto",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        // Icon(
                        //   Icons.anchor_outlined,
                        //   color: Colors.yellowAccent,
                        // ),
                        // Row(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: <Widget>[
                        //     // Icon(
                        //     //   Icons.star,
                        //     //   color: Colors.green,
                        //     // ),

                        //     // Text(
                        //     //   "(220 reviews)",
                        //     //   style: TextStyle(color: Colors.grey),
                        //     // )
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
