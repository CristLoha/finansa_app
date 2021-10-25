import 'package:finansa_app/shared/theme.dart';
import 'package:finansa_app/shared/widgets/menus_custom.dart';
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

    Widget cardMenus() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenusCustom(
                        iconMenus: 'assets/icon_payment.png',
                        titleMenus: 'Top Up',
                      ),
                      MenusCustom(
                        iconMenus: 'assets/icon_transfer.png',
                        titleMenus: 'Transfer',
                      ),
                      MenusCustom(
                        iconMenus: 'assets/icon_purchase.png',
                        titleMenus: 'Bills',
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenusCustom(
                        iconMenus: 'assets/icon_card_bank.png',
                        titleMenus: 'Withdraw',
                      ),
                      MenusCustom(
                        iconMenus: 'assets/icon_reward.png',
                        titleMenus: 'Reward',
                      ),
                      MenusCustom(
                        iconMenus: 'assets/icon_nearby.png',
                        titleMenus: 'Nearby',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              balanceCard(),
              titleMenus(),
              cardMenus(),
            ],
          )
        ],
      ),
    );
  }
}
