import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/components/recommended_plant_card.dart';
import 'package:plant_app/screens/home/components/recommended_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';
import 'package:plant_app/util/constants.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/title_with_underline.dart';

import 'featured_plant_card.dart';
import 'feaured_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(
            size: size,
          ),
          SizedBox(
            height: 24,
          ),
          TitleWithMoreButton(
            title: "Recommended",
            onPressed: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreButton(
            title: "Featured Plants",
            onPressed: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
