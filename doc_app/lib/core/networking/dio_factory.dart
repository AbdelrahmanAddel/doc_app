import 'package:dio/dio.dart';
import 'package:doc_app/core/constant/shared_pref_key.dart';
import 'package:doc_app/core/constant/shared_prefrence.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration timeOut = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers.addAll({
      'Authorization':
          'Bearer ${await SharedPrefHelper.getSecureString(SharedPrefKey.userToken)}',
      'Accept': 'application/json',
    });
  }

  static void setTokenAfterLoginIn(String token) {
    dio?.options.headers.addAll({
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    });
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
}
