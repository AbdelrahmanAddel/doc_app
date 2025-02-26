import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/feature/onboarding/screen/onboarding_screen.dart';
import 'package:doc_app/feature/sign_in/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
 static Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case RouterStrings.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RouterStrings.signIn:
        return MaterialPageRoute(builder: (_) => SignInScreen());
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
