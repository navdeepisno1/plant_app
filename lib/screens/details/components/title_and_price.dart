import 'package:flutter/material.dart';
import 'package:plant_app/util/constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String title, country;
  final int price;

  TitleAndPrice({this.price, this.country, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '$title\n',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: '$country',
                  style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold))
            ]),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
