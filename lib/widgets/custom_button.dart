import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  final Color colorButton;
  final TextStyle textStyle;
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.colorButton,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 150,
        height: 45,
        child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: colorButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
