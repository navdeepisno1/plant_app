import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/util/constants.dart';

import 'icon_card.dart';

class ImageAndIconsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Spacer(),
                    IconCard(
                      icon: 'assets/icons/sun.svg',
                    ),
                    IconCard(
                      icon: 'assets/icons/icon_2.svg',
                    ),
                    IconCard(
                      icon: 'assets/icons/icon_3.svg',
                    ),
                    IconCard(
                      icon: 'assets/icons/icon_4.svg',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    )
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        ),
      ),
    );
  }
}
