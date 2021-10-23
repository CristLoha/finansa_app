import 'package:finansa_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dashboard',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            Image.asset(
              'assets/icon_notification.png',
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget balanceCard() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin),
        width: 300,
        height: 190,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_card1.png'),
          ),
        ),
        child: Expanded(
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
                '\$12,480,209',
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
        ),
      );
    }

    Widget titleMenus() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin),
        child: Text(
          'Main Menus',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              balanceCard(),
              titleMenus(),
            ],
          )
        ],
      ),
    );
  }
}
