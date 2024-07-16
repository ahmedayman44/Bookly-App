//The repo class depends on creating an abstract class and inside this class I create my method without implementation inside the class.
//I specify which feature will be done, but I will not do it how because I may have more than one way to implement this need.
import 'package:booklly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booklly_app/errors/failures.dart';

// using dartz package to return two type of data Either<Failure, List<BookModel>>
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // using Either<Failure, List<BookModel>> because in some cases it may fail Failure and other times it may succeed List<BookModel>
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
