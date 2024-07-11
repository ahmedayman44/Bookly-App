import 'dart:ui';

import 'package:booklly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar_book_detailes.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklly_app/core/utils/style.dart';
import 'package:booklly_app/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // create a relative width to used in any device to save the volume of picture
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetailes(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.22),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18
                .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              colortext: Colors.black,
              backgroundColor: Colors.white,
              text: '19.99 €',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              colortext: Colors.white,
              backgroundColor: Color(0xFFEF8261),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
