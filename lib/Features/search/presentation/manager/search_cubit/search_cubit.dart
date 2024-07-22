import 'package:bloc/bloc.dart';
import 'package:booklly_app/Features/search/data/repos/search_repo.dart';
import 'package:booklly_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo, this.searchKeyword) : super(SearchInitial());

  final SearchRepo searchRepo;
  final String searchKeyword;

  Future<void> getSearchBooks(
      {required int startIndex, required String searchKeyword}) async {
    emit(SearchLoading());
    var result = await searchRepo.searchBooks(
        searchKeyword: searchKeyword, startIndex: startIndex);
    result.fold((failure) => emit(SearchFailure(failure.errMessage)),
        (books) => emit(SearchSuccess(books)));
  }
}
