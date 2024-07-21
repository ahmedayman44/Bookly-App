import 'package:booklly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booklly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:booklly_app/Features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:booklly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:booklly_app/Features/home/presentation/views/home_view.dart';
import 'package:booklly_app/Features/search/presentation/views/search_view.dart';
import 'package:booklly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:booklly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailesView = '/bookDetailesView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailesView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilerBooksCubit(
            getIt.get<HomeRepoImplement>(),
          ),
          child: BookDetailesView(
            // using state to send detailes to BookDetailesView when navagite to it
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
