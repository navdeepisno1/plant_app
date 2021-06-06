import 'package:flutter/material.dart';
import 'package:plant_app/util/constants.dart';

import 'featured_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(right: kDefaultPadding),
        child: Row(
          children: [
            FeaturedPlantCard(
              image: "assets/images/bottom_img_1.png",
            ),
            FeaturedPlantCard(
              image: "assets/images/bottom_img_2.png",
            ),
          ],
        ),
      ),
    );
  }
}
