import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class CardCart extends StatelessWidget {
  const CardCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image_shoes.png',
                    ),
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
              Column(
                children: [
                  Image.asset(
                    'assets/images/icon_add.png',
                    width: 12,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/images/icon_min.png',
                    width: 12,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Icon(
                Icons.delete,
                size: 14,
                color: alertColor,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Remove',
                style: primaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: light, color: alertColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
