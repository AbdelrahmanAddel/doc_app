import 'package:doc_app/core/dependeny_injection/dependeny_injection.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_app/features/home/ui/home_view.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/onboarding/screen/onboarding_screen.dart';
import 'package:doc_app/features/login/ui/view/login_view.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';

import 'package:doc_app/features/sign_up/ui/view/sign_up_view.dart';
import 'package:doc_app/features/splash/view/splash_view.dart';
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
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => HomeCubit(getIt())..getAllSpecializationsDoctors(),
                child: HomeView(),
              ),
        );
      case RouterStrings.signUp:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: SignUpView(),
              ),
        );
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
