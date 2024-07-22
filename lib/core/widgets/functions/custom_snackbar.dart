import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black,
    ),
  );
}
