import 'package:finansa_app/shared/theme.dart';
import 'package:finansa_app/shared/widgets/menus_custom.dart';
import 'package:finansa_app/shared/widgets/widget_balance_card.dart';
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
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              WidgetBalanceCard(
                currentBalance: '\$11,500,209',
                image: 'assets/image_card1.png',
              ),
              SizedBox(width: 20),
              WidgetBalanceCard(
                currentBalance: '\$12,480,2099',
                image: 'assets/image_card2.png',
              ),
              SizedBox(width: defaultMargin),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
      );
    }

    return ListView(
      children: [
        header(),
        balanceCard(),
        titleMenus(),
        cardMenus(),
        SizedBox(height: 111),
      ],
    );
  }
}
