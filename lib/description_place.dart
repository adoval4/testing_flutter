import 'package:flutter/material.dart';
import 'package:platzi_trips_app/purple_button.dart';


class DescriptionPlace extends StatelessWidget {

  String place_name;
  int stars;
  String place_description;

  DescriptionPlace(this.place_name, this.stars, this.place_description);

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

    final start_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        place_description,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
            color: Colors.black38
        ),
        textAlign: TextAlign.justify,
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            place_name,
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Lato",
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            start_border
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        PurpleButton('Navigate')
      ],
    );
  }
}