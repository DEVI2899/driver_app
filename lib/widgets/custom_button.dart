import 'package:flutter/material.dart';
import 'package:task_tarkiz/utils/appcolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final double height;
  final double width ;
  final BoxDecoration decoration;
  final VoidCallback onPressed;

  const CustomButton({super.key,
    required this.text,
    required this.color,
    required this.height,
    required this.decoration,
    required this.onPressed,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: decoration.copyWith(color: color),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(color: AppColors.whiteColor, fontSize: 16),
        ),
      ),
    );
  }
}

