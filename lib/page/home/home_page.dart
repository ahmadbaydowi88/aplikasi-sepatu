import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';
import 'package:shamo/widget/newArrival_card.dart';
import 'package:shamo/widget/product_card.dart';
import 'package:shamo/widget/titleText.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Baydowi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semibold,
                    ),
                  ),
                  Text(
                    '@baydowi',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/image_profile.png",
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  "all shoes",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                ),
                child: Text(
                  "Running",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                ),
                child: Text(
                  "Training",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                ),
                child: Text(
                  "Basketball",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget populerProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                PopulerCard(),
                PopulerCard(),
                PopulerCard(),
                PopulerCard(),
              ],
            )),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            NewArrivalCard(),
            NewArrivalCard(),
            NewArrivalCard(),
            NewArrivalCard(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        category(),
        titleText("Popular Products"),
        populerProduct(),
        titleText("New Arrivals"),
        newArrivals(),
      ],
    );
  }
}
