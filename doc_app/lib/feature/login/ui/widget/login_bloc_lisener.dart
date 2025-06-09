import 'package:doc_app/core/common/widget/custom_error_dialog.dart';
import 'package:doc_app/core/helper/naviagtor.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocLisener extends StatelessWidget {
  const LoginBlocLisener({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder:
                  (context) => Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  ),
            );
          },
          success: (loginResponce) {
            context.pop();
            context.pushReplacementNamed(routeName: RouterStrings.home);
          },
          error: (errorMessage) {
            context.pop();
            customErrorDialog(context, errorMessage);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
