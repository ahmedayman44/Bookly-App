import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar_book_detailes.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomAppBarBookDetailes(),
        ],
      ),
    );
  }
}

