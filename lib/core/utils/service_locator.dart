import 'package:booklly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:booklly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiveLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      getIt.get<ApiService>(),
    ),
  );
}
