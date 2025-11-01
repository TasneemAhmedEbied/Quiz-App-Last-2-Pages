import 'package:flutter/material.dart';
import 'package:quiz_app/view/quiz_page/screens/quiz_page.dart';
import '../../view/answer_page/screens/answer_screen.dart';
import '../../view/home/screens/splash_page.dart';
import '../../view/login_page/screens/login_page.dart';
import '../../view/onbourding/screens/onbourding.dart';
import '../screen/unknown_route.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget page;
    switch (settings.name) {
      case RoutesName.splashRoute:
        page = SplashPage();
      case RoutesName.onBoardingRoute:
        page = OnbourdingPage();
      case RoutesName.loginRoute:
        page = LoginPage();
      case RoutesName.quizScreenRoute:
        page = QuizPage();
      case RoutesName.answerScreenRoute:
        page = AnswerScreen();

      default:
        page = UnknownRoute();
    }
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}

class RoutesName {
  RoutesName._();

  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/loginRoute";
  static const String quizScreenRoute = "/quizScreen";
  static const String answerScreenRoute = "/answerScreen";
}
