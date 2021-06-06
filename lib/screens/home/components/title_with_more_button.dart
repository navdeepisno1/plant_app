import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/title_with_underline.dart';
import 'package:plant_app/util/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  TitleWithMoreButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithUnderLine(title: title),
          Spacer(),
          FlatButton(
            onPressed: onPressed,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}
