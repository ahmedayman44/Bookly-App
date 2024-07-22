import 'package:booklly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklly_app/core/widgets/custom_error_message.dart';
import 'package:booklly_app/core/widgets/shimmer_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSucess) {
        return ListView.builder(
          // shrinkWrap: true is forced to build all widget to make the list take the hight of these childern
          //shrinkWrap: true,
          // physics:  NeverScrollableScrollPhysics() to make the list not scrollable because it's not needed customScrollView scrollable
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return CustomErrorMessage(errorMessage: state.errMessage);
      } else {
        return const ShimmerBestSeller();
      }
    });
  }
}
