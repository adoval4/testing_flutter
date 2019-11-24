import 'package:flutter/material.dart';

// Custom widgets
import 'package:platzi_trips_app/card_image.dart';


class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/img/image1.jpg'),
          CardImage('assets/img/image2.jpg'),
          CardImage('assets/img/image3.jpg'),
        ],
      ),
    );
  }

}