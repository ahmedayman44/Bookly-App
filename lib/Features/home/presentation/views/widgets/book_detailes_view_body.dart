import 'dart:ui';

import 'package:booklly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar_book_detailes.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklly_app/core/utils/style.dart';
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
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListView() ,
          
        ],
      ),
    );
  }
}


