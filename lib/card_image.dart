import 'package:flutter/material.dart';


class CardImage extends StatelessWidget {

  String imagePath = 'assets/img/image1.jpg';

  CardImage(this.imagePath);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350.0,
      width: 250,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.7)
          )
        ]
      ),

    );

    return card;
  }
}