import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';
import 'package:plant_app/util/constants.dart';

import 'icon_card.dart';
import 'image_and_icon_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconsCard(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.5,
                height: 84,
                child: FlatButton(
                  color: kPrimaryColor,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  )),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  child: FlatButton(
                onPressed: () {},
                child: Text("Description"),
              )),
              SizedBox(
                height: kDefaultPadding * 2,
              )
            ],
          )
        ],
      ),
    );
  }
}
