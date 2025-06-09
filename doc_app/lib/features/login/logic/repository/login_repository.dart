import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/login/data/model/login_request_body_model.dart';
import 'package:doc_app/features/login/data/model/login_responce_model.dart';

abstract class LoginRepository {
  Future<ApiResult<LoginResponceModel>> login({
    required LoginRequestBodyModel loginData,
  });
}
