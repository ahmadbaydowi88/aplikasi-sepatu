import 'package:flutter/cupertino.dart';
import 'package:shamo/theme/theme.dart';

Widget titleText(String title) {
  return Container(
    margin: EdgeInsets.only(
        top: defaultMargin, left: defaultMargin, right: defaultMargin),
    child: Text(
      title,
      style: primaryTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semibold,
      ),
    ),
  );
}
