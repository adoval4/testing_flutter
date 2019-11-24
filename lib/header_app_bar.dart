import 'package:flutter/material.dart';

// Custom widgets
import 'package:platzi_trips_app/card_image_list.dart';
import 'package:platzi_trips_app/gradient_background.dart';


class HeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBackground('Popular'),
        CardImageList()
      ],
    );
  }

}