import 'package:booklly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSectionPartTwo extends StatelessWidget {
  const BookDetailsSectionPartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BooksAction(),
        SizedBox(
          height: 32,
        ),
        Text(
          'You can also like',
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
