import 'package:booklly_app/Features/home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // SafeArea Ensure that the UI starts after the status bar is shown.
      body: SafeArea(
        child: BookDetailesViewBody(),
      ),
    );
  }
}
