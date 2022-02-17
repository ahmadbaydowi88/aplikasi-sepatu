import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class CardCheckout extends StatelessWidget {
  const CardCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(
        top: 12,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/image_shoes.png'),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  '\$143,98',
                  style: primaryTextStyle.copyWith(
                    color: priceColor,
                  ),
                )
              ],
            ),
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle,
          )
        ],
      ),
    );
  }
}
