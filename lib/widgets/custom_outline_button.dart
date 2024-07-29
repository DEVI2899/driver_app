import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;
  final Color color;
  final double height;
  final double width;
  final FontWeight fontWeight;

  const CustomOutlineButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.height,
    required this.width,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
              width: width, color: color),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
          ),
        ),

      ),
    );
  }
}

