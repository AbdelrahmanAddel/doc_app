import 'package:doc_app/core/dependeny_injection/dependeny_injection.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/feature/home/ui/home_view.dart';
import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/feature/onboarding/screen/onboarding_screen.dart';
import 'package:doc_app/feature/login/ui/view/login_view.dart';

import 'package:doc_app/feature/sign_up/ui/sign_up_view.dart';
import 'package:doc_app/feature/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case RouterStrings.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RouterStrings.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: LoginView(),
              ),
        );
      case RouterStrings.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case RouterStrings.home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RouterStrings.signUp:
        return MaterialPageRoute(builder: (_) => SignUpView());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('There No $settings screen')),
              ),
        );
    }
  }
}
