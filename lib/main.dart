

import 'package:booklly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:booklly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklly_app/constants.dart';
import 'package:booklly_app/core/utils/app_router.dart';
import 'package:booklly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // final dio = Dio()
  //   ..interceptors.add(
  //     LogInterceptor(
  //       requestBody: true,
  //       responseBody: true,
  //       requestHeader: true,
  //       responseHeader: true,
  //       request: true,
  //       error: true,
  //     ),
  //   );
  // dio
  //     .get(
  //         'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=computer science&sorting=newest')
  //     .then((response) {
  //   print('Response data: ${response.data}');
  // }).catchError((error) {
  //   log('Error: $error');
  // });

  setUpServiveLocator();

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplement>()
              ..fetchFeaturedBooks(), //.. mean that calling  fetchFeaturedBooks()
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplement>()..fetchNewestBooks(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
