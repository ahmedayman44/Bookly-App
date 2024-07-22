import 'package:booklly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booklly_app/core/widgets/custom_button.dart';
import 'package:booklly_app/core/widgets/functions/lanch_url.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              colortext: Colors.black,
              backgroundColor: Colors.white,
              text: 'Free',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                lunchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              text: getText(bookModel),
              colortext: Colors.white,
              backgroundColor: const Color(0xFFEF8261),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }
  
 String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avaliable';
  }else {
    return 'Preview';
  }
 }
}
