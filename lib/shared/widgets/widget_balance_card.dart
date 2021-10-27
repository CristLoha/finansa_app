import 'package:flutter/material.dart';

import '../theme.dart';

class WidgetBalanceCard extends StatelessWidget {
  final String currentBalance;
  final String image;
  const WidgetBalanceCard({
    Key? key,
    required this.currentBalance,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 190,
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 13,
              fontWeight: medium,
            ),
          ),
          Text(
            currentBalance,
            style: whiteTextStyle.copyWith(
              fontSize: 28,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 40),
          Text(
            '••••  ••••  ••••  3901',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
