import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_constants.dart';
import 'package:doc_app/features/login/data/model/login_request_body_model.dart';
import 'package:doc_app/features/login/data/model/login_responce_model.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_request_model.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_responce_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponceModel> loginWithEmailAndPassword(
    @Body() LoginRequestBodyModel loginRequestBodyModel,
  );
  @POST(ApiConstants.signUp)
  Future<SignUpResponceModel> signUp(
    @Body() SignUpRequestModel signUpRequestModel,
  );
}
