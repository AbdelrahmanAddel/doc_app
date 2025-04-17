import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/feature/login/data/repository/login_repository_impl.dart';
import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/feature/login/logic/repository/login_repository.dart';
import 'package:doc_app/feature/sign_up/data/repository/sign_up_repository_impl.dart';
import 'package:doc_app/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/feature/sign_up/logic/repository/sign_up_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetIt() {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  _login();
  _signUp();
}

_signUp() {
  getIt.registerLazySingleton<SignUpRepository>(
    () => SignUpRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<SignUpCubit>(() => SignUpCubit(getIt()));
}

_login() {
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
