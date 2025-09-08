import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_project/core/networking/api_service.dart';
import 'package:medical_project/core/networking/dio_factory.dart';
import 'package:medical_project/features/auth/data/repos/login_repo.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
