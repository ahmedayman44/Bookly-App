import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
