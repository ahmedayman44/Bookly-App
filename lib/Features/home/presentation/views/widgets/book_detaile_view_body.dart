import 'package:booklly_app/Features/home/presentation/views/widgets/book_details_section_part_one.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/book_details_section_part_two.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar_book_detailes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomAppBarBookDetailes(),
                BookDetailsSectionPartOne(),
                Expanded(
                  child: SizedBox(
                    height: 37,
                  ),
                ),
                BookDetailsSectionPartTwo(),
                SizedBox(
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
