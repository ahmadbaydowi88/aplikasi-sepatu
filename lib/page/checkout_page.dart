import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';
import 'package:shamo/widget/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  AppBar header() => AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
        ),
      );

  Widget content(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        //NOTE: LIST ITEMS

        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'List Item',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              CardCheckout(),
            ],
          ),
        ),
        //NOTE: ADDRESS DETAIL
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address Details',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/icon_resto.png',
                        width: 40,
                      ),
                      Image.asset(
                        'assets/images/icon_line.png',
                        height: 30,
                      ),
                      Image.asset(
                        'assets/images/icon_location.png',
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Adidas Core',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Your Address',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Bekasi',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),

        // NOTE: PAYMENT
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Summary',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Quantity',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2 Items',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Price',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '\$575.96',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Free',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Color(0xFF2E314),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: semibold,
                      color: priceColor,
                    ),
                  ),
                  Text(
                    '\$575.96',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semibold,
                      color: priceColor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        // NOTE: BOTTON BAR
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
          color: Color(0xFF2E314),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: defaultMargin),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/checkout-success');
            },
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: primaryColor),
            child: Text(
              'Checkout Now',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(context),
    );
  }
}
