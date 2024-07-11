import 'package:booklly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:booklly_app/Features/home/presentation/views/home_view.dart';
import 'package:booklly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home';
  static const kBookDetailesView = '/Book-detailes';
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
    ],
  );
}