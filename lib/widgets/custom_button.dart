import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double padding, borderRadius;
  VoidCallback onTap;
  CustomButton(
      {super.key,
        required this.text,
        required this.backgroundColor,
        required this.textColor,
        required this.padding,
        this.borderRadius = 10,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
