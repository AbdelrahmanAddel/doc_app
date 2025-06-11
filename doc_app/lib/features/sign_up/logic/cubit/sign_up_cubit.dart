// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:doc_app/features/sign_up/data/model/sign_up_request_model.dart';

import 'package:doc_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:doc_app/features/sign_up/logic/repository/sign_up_repository.dart';
import 'package:flutter/material.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpRepository signUpRepository;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  bool isObsecureConfirmPassword = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;

  SignUpCubit(this.signUpRepository) : super(SignUpState.initial());
  void emitSignUpState() async {
    emit(SignUpState.loading());
    final responce = await signUpRepository.signUp(
      SignUpRequestModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: '1',
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ),
    );
    responce.when(
      success: (success) => emit(SignUpState.success(success)),
      failure: (failure) {
        emit(SignUpState.error(failure.apiErrorModel.message ?? "Error"));
      },
    );
  }
}
