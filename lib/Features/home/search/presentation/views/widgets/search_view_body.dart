import 'package:booklly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklly_app/Features/home/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 14),
      child: Column(
        children: [
          CustomSearchTextField(),
          //SearchBestSellerListView(),
        ],
      ),
    );
  }
}


class SearchBestSellerListView extends StatelessWidget {
  const SearchBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // shrinkWrap: true is forced to build all widget to make the list take the hight of these childern
        //shrinkWrap: true,
        // physics:  NeverScrollableScrollPhysics() to make the list not scrollable because it's not needed customScrollView scrollable
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        });
  }
}
