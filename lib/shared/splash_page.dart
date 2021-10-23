import 'package:finansa_app/shared/theme.dart';
import 'package:finansa_app/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageSplash() {
      return Container(
        height: 310,
        width: 398,
        margin: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_splash.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 60, left: defaultMargin),
        child: Text(
          'Effortless.\nIntegrated app.',
          style: primaryTextStyle.copyWith(
            fontSize: 28,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        margin: EdgeInsets.only(top: 50, bottom: 75),
        child: Row(
          children: [
            CustomButton(
              title: 'Sign In',
              onPressed: () {},
              colorButton: buttonGreyColor,
              textStyle:
                  secondaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            SizedBox(width: 15),
            CustomButton(
              title: 'Get Started',
              onPressed: () => Navigator.pushNamed(context, '/home-page'),
              colorButton: primaryColor,
              textStyle:
                  whiteTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            imageSplash(),
            title(),
            button(),
          ],
        ),
      ),
    );
  }
}
