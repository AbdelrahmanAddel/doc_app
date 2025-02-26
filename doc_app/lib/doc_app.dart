import 'package:doc_app/core/constant/app_colors.dart';
import 'package:doc_app/core/router/app_router.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: AppColors.primaryColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RouterStrings.onBoarding,
        onGenerateRoute: AppRouter.generateRouter,
      ),
    );
  }
}
