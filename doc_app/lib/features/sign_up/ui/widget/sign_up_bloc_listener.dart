import 'package:doc_app/core/common/widget/custom_error_dialog.dart';
import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:doc_app/features/sign_up/ui/widget/sign_up_success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (signUpResponceModel) {
            signUpSuccessDialog(context);
          },
          error: (error) {
            context.pop();
            customErrorDialog(context, error);
          },
          loading: () {
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  ),
            );
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
