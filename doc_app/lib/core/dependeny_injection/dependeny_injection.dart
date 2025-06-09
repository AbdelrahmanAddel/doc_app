import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/features/login/data/repository/login_repository_impl.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/login/logic/repository/login_repository.dart';
import 'package:doc_app/features/sign_up/data/repository/sign_up_repository_impl.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/features/sign_up/logic/repository/sign_up_repository.dart';
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
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}

_login() {
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt()),
  );
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
