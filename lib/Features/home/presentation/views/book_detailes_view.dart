import 'package:booklly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booklly_app/Features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:booklly_app/Features/home/presentation/views/widgets/book_detaile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

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
