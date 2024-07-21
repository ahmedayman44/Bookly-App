import 'package:booklly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklly_app/constants.dart';
import 'package:booklly_app/core/utils/app_router.dart';
import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailesView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.1 / 4,
                child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style:
                            Styles.textStyle20.copyWith(fontFamily: kGTSectra),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14.copyWith(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
