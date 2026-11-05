// Create a global instance (or use GetIt.instance)
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<HomeRepoImple>(
    HomeRepoImple(getIt.get<ApiServices>()),
  );
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
}
