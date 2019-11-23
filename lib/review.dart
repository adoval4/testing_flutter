import 'package:flutter/material.dart';


class Review extends StatelessWidget {

  String imagePath = 'assets/img/traveler_image.png';
  String name = 'Adolfo Valdivieso';
  String details = '1 review, 5 photos';
  String comment = 'There is an amazing place in Sri Lanka';

  Review(
      this.imagePath,
      this.name,
      this.details,
      this.comment
  );

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 70.0,
      height: 70.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imagePath)
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 15.0,
          top: 18.0,
          bottom: 3.0
      ),
      child: Text(
          name,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0
        )
      )
    );

    final userDetails = Container(
        margin: EdgeInsets.only(
            left: 15.0,
            bottom: 8.0
        ),
        child: Text(
            details,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
              color: Colors.black45
            )
        )
    );

    final userComment = Container(
        margin: EdgeInsets.only(
            left: 15.0,
            bottom: 5.0
        ),
        child: Text(
            comment,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
                fontWeight: FontWeight.w900
            )
        )
    );

    final star = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 13.0
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
          size: 13.0
      ),
    );

    final start_border = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
          size: 13.0
      ),
    );

    final userStars = Container(
      margin: EdgeInsets.only(
        bottom: 8.0,
        left: 8.0
      ),
      child: Row(
        children: <Widget>[
          star,
          star,
          star,
          star,
          start_border
        ],
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        Row(
          children: <Widget>[
            userDetails,
            userStars
          ],
        ),
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userInfo
      ],
    );
  }

}