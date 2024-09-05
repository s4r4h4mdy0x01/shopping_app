import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shopping_app/core/network/api_service.dart';
import 'package:shopping_app/core/network/dio_factory.dart';

import '../../features/home/data/repo/home_repo.dart';
import '../../features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupDependencyInjection() async {
  // dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
