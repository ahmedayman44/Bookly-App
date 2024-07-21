import 'package:booklly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // CustomScrollView is used to make all app scroll
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        // SliverToBoxAdapter make me forced to make shrinkWrap true
        // SliverToBoxAdapter(
        //   child: BestSellerListView(),
        // ),
        // so we can here used used SliverFillRemaining because it donnt forced me to make shrinkWrap true
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
