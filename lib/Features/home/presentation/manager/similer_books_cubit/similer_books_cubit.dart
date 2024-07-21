import 'package:bloc/bloc.dart';
import 'package:booklly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booklly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilerBooksInfoFailure(failure.errMessage));
    }, (books) {
      emit(SimilerBooksSuccess(books));
    });
  }
}
