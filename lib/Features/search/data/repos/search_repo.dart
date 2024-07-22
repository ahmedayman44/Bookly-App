import 'package:booklly_app/core/errors/failures.dart';
import 'package:booklly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String searchKeyword, required int startIndex});
}
