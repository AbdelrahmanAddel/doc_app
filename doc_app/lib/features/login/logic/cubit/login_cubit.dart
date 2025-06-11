import 'package:bloc/bloc.dart';
import 'package:doc_app/features/login/data/model/login_request_body_model.dart';
import 'package:doc_app/features/login/logic/cubit/login_state.dart';
import 'package:doc_app/features/login/logic/repository/login_repository.dart';
import 'package:flutter/widgets.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(LoginState.initial());

  bool isObsecure = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  emitLoginState() async {
    emit(LoginState.loading());
    final responce = await _loginRepository.login(
      loginData: LoginRequestBodyModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    responce.when(
      success: (loginResponce) {
        emit(LoginState.success(loginResponce.message ?? "Login Succeess"));
      },
      failure: (error) {
        emit(LoginState.error(error.apiErrorModel.message ?? "Error "));
      },
    );
  }
}
