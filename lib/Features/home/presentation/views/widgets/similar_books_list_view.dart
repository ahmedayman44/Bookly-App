import 'package:booklly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.22,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(imageUrl: 'data:image/jpeg;base64,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',),
            );
          }),
    );
  }
}
