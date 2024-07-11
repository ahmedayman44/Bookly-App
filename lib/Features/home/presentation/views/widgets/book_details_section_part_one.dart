import 'package:booklly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSectionPartOne extends StatelessWidget {
  const  BookDetailsSectionPartOne({super.key});

  @override
  Widget build(BuildContext context) {
    // create a relative width to used in any device to save the volume of picture
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
       
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
        
      ],
    );
  }
}