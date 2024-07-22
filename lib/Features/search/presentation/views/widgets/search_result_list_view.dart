import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // shrinkWrap: true is forced to build all widget to make the list take the hight of these childern
        //shrinkWrap: true,
        // physics:  NeverScrollableScrollPhysics() to make the list not scrollable because it's not needed customScrollView scrollable

        padding: EdgeInsets.zero,
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            //child: BookListViewItem(),
            child: Text('fgd'),
          );
        });
  }
}
