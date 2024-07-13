import 'package:booklly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:booklly_app/Features/home/presentation/views/home_view.dart';
import 'package:booklly_app/Features/home/search/presentation/views/search_view.dart';
import 'package:booklly_app/Features/splash/presentation/views/splash_view.dart';
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
        path:kBookDetailesView ,
        builder: (context, state) => const BookDetailesView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
