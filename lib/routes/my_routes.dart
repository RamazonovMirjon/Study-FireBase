import 'package:flutter/material.dart';
import 'package:stady/screens/sign_up/sign_up.dart';
import 'package:stady/screens/start/Onboarding/onboarding2.dart';
import 'package:stady/screens/start/Onboarding/onboarding3.dart';
import 'package:stady/screens/start/Onboarding/onboarding_1.dart';
import 'package:stady/screens/start/welcome/welcome_screen.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    var arguments = settings.arguments;

    switch (settings.name) {
      case "/start":
        return MaterialPageRoute(builder: ((context) => const WelcomeScreen()));

      case "/onboarding1":
        return MaterialPageRoute(builder: ((context) => const Onboarding1()));
      case "/onboarding2":
        return MaterialPageRoute(builder: ((context) => const Onboarding2()));
      case "/onboarding3":
        return MaterialPageRoute(builder: ((context) => const Onboarding3()));
      case "/signup":
        return MaterialPageRoute(builder: ((context) => const SignUp()));
      case "/signin":
        return MaterialPageRoute(builder: ((context) => const Onboarding3()));
    }
    return null;
  }
}
