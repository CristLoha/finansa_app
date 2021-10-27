import 'package:finansa_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MenusCustom extends StatelessWidget {
  final String iconMenus;
  final String titleMenus;
  const MenusCustom({
    Key? key,
    required this.iconMenus,
    required this.titleMenus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: backgroundColor1,
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconMenus,
                width: 34,
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        Text(titleMenus)
      ],
    );
  }
}
