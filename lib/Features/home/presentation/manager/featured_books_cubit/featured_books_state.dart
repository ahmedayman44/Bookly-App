part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

//ال sucess قدامي اختيارين اخلي الداتا الي جتلي بالفعل عايشة في الcubit ذات نفسة او تجيلي من خلال الstate بتاعت الsucess انا بختار علي اساس هعرض البيانات فينانا لو هعرض البيانات داخل list يعني يدوب هديها للlist علطول فخلاص هستقبلها في الsucessفانا هنا بعتمد علي نقطة انا هعرض البيانات فين وعلي اساسها بحدد هل انا هستقبل البيانات داخل الsucess state  ولا هخليها جوة الcubit
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccess(this.books);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}
