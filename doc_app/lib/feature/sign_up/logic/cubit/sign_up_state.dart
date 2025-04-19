import 'package:doc_app/feature/sign_up/data/model/sign_up_responce_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success(SignUpResponceModel signUpResponceModel) =
      Success;
  const factory SignUpState.error(String error) = Error;
}
