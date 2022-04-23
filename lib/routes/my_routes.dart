import 'package:flutter/material.dart';
import 'package:stady/screens/authentication/sign_in/sign_in.dart';
import 'package:stady/screens/authentication/sign_up/interest.dart';
import 'package:stady/screens/authentication/sign_up/sign_up.dart';
import 'package:stady/screens/home/subjects/subjects.dart';
import 'package:stady/screens/start/onboarding2.dart';
import 'package:stady/screens/start/onboarding3.dart';
import 'package:stady/screens/start/onboarding1.dart';
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
        return MaterialPageRoute(builder: ((context) => const SignIn()));
      case "/subjects":
        return MaterialPageRoute(builder: ((context) => const Subjects()));
      case "/interest":
        return MaterialPageRoute(builder: ((context) => const Interest()));
    }
    return null;
  }
}
