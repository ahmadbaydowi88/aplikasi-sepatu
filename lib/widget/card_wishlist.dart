import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class CardWishlist extends StatelessWidget {
  const CardWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        right: 20,
        bottom: 14,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/image_shoes.png',
              width: 60,
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
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/botton_wishlist.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
