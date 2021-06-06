import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/detail_screen.dart';
import 'package:plant_app/screens/home/components/recommended_plant_card.dart';
import 'package:plant_app/util/constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
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
            RecommendedPlantCard(
              image: "assets/images/image_1.png",
              title: "Samantha",
              country: "Russia",
              price: 440,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              },
            ),
            RecommendedPlantCard(
              image: "assets/images/image_2.png",
              title: "Angelica",
              country: "Russia",
              price: 540,
              onTap: () {},
            ),
            RecommendedPlantCard(
              image: "assets/images/image_3.png",
              title: "Samantha",
              country: "Russia",
              price: 440,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
