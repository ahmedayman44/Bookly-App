import 'package:booklly_app/Features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklly_app/core/widgets/custom_error_message.dart';
import 'package:booklly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
        builder: (context, state) {
      if (state is SimilerBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.width * 0.22,
          child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              }),
        );
      } else if (state is SimilerBooksFailure) {
        return CustomErrorMessage(errorMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
