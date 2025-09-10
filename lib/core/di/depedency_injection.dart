import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_project/core/networking/api_service.dart';
import 'package:medical_project/core/networking/dio_factory.dart';
import 'package:medical_project/features/auth/data/repos/login_repo.dart';
import 'package:medical_project/features/auth/data/repos/sign_up_repo.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/sign_up_cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerFactory<ApiService>(() => ApiService(dio));

  // login
  getIt.registerFactory<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerFactory<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
