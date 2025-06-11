import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_request_model.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_responce_model.dart';

abstract class SignUpRepository {
  Future<ApiResult<SignUpResponceModel>> signUp(
    SignUpRequestModel signUpRequestModel,
  );
}
