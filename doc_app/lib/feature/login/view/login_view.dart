import 'package:doc_app/feature/login/view/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 50.h),
        child: SafeArea(
          child: GestureDetector(
            onTap: ()=>FocusScope.of(context).unfocus(),
            child: LoginViewBody(),
          ),
        ),
      ),
    );
  }
}
