import 'package:finansa_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget carButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Image.asset(
          'assets/fi_maximize.png',
          width: 24,
        ),
      );
    }

    Widget customBottomNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/fi_home.png',
                    width: 24,
                    color: currentIndex == 0 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/fi_calendar.png',
                    width: 24,
                    color: currentIndex == 1 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/fi_briefcase.png',
                    width: 24,
                    color: currentIndex == 2 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/fi_settings.png',
                    width: 24,
                    color: currentIndex == 3 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: ''),
          ],
        ),
      );
    }

    Widget content() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      floatingActionButton: carButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: content(),
    );
  }
}
