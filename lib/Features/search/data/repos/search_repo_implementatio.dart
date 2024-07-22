import 'package:booklly_app/Features/search/data/repos/search_repo.dart';
import 'package:booklly_app/core/errors/failures.dart';
import 'package:booklly_app/core/models/book_model/book_model.dart';
import 'package:booklly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String searchKeyword, required int startIndex}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=$searchKeyword&startIndex=$startIndex');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
