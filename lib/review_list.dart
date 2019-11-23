import 'package:flutter/material.dart';

// Custom widgets
import 'package:platzi_trips_app/review.dart';


class ReviewList extends StatelessWidget {

  List<Map> reviews = [
    {
      'userImagePath': 'assets/img/traveler_image.png',
      'userName': 'Adolfo',
      'userDetails': '1 review . 5 photos',
      'userComment': 'I loved the place. Totally worth it!'
    }
  ];

  ReviewList(this.reviews);

  @override
  Widget build(BuildContext context) {

    List<Widget> reviewWidgets = [];
    
    for(int i=0; i < reviews.length; i++) {
      reviewWidgets.add(new Review(
          reviews[i]['userImagePath'],
          reviews[i]['userName'],
          reviews[i]['userDetails'],
          reviews[i]['userComment']
      ));
    }

    return Container(
      margin: EdgeInsets.only(
        bottom: 30.0,
      ),
      child: Column(
        children: reviewWidgets,
      ),
    );
  }

}