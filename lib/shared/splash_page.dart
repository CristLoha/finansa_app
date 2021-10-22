import 'package:finansa_app/shared/theme.dart';
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

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            imageSplash(),
            title(),
          ],
        ),
      ),
    );
  }
}
