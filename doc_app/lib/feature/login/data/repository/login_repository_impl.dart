import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/feature/login/data/model/login_request_body_model.dart';
import 'package:doc_app/feature/login/data/model/login_responce_model.dart';
import 'package:doc_app/feature/login/logic/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final ApiService _apiService;

  LoginRepositoryImpl(this._apiService);
  @override
  Future<ApiResult<LoginResponceModel>> login({
    required LoginRequestBodyModel loginData,
  }) async {
    try {
      final responce = await _apiService.loginWithEmailAndPassword(
        loginData,
      );
      return ApiResult.success(responce);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
