import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.colortext,
    required this.backgroundColor,
    this.borderRadius,
  });

  final String text;
  final Color colortext;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: colortext,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
