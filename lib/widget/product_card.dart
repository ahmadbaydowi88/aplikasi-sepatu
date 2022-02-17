import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class PopulerCard extends StatelessWidget {
  const PopulerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product-page');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffecedef),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Image.asset(
              "assets/images/image_shoes.png",
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            // SizedBox(
            //   height: defaultMargin,
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hiking",
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "COURT VISION 2.0",
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "\$58,67",
                    style: primaryTextStyle.copyWith(
                      color: priceColor,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
