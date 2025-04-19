import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/feature/onboarding/screen/onboarding_screen.dart';
import 'package:doc_app/feature/login/view/login_view.dart';
import 'package:doc_app/feature/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case RouterStrings.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RouterStrings.login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RouterStrings.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
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
