import 'package:booklly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklly_app/core/utils/style.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(left: 24.0, top: 30, bottom: 15),
          child: Text(
            'Best Seller',
            style: Styles.titleMeduim,
          ),
        ),

        //Text('data' , style: GoogleFonts.montserrat(),)
      ],
    );
  }
}
