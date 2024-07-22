import 'package:booklly_app/core/models/book_model/book_model.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/book_details_section_part_one.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/book_details_section_part_two.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar_book_detailes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetailes(),
                BookDetailsSectionPartOne(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 37,
                  ),
                ),
                const BookDetailsSectionPartTwo(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
