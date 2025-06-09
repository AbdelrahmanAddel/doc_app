import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_request_model.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_responce_model.dart';
import 'package:doc_app/features/sign_up/logic/repository/sign_up_repository.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  final ApiService _apiService;
  SignUpRepositoryImpl(this._apiService);

  @override
  Future<ApiResult<SignUpResponceModel>> signUp(
    SignUpRequestModel signUpRequestModel,
  ) async {
    try {
      final responce = await _apiService.signUp(signUpRequestModel);
      return ApiResult.success(responce);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
