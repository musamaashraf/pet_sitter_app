import 'package:flutter/material.dart';
import 'package:whiskers_away/choice.dart';
import 'package:whiskers_away/login.dart';
import 'package:whiskers_away/models/jobdetailmodel.dart';
import 'package:whiskers_away/onboarding.dart';
import 'package:whiskers_away/petsitter/homeps.dart';
import 'package:whiskers_away/petsitter/jobdetailps.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/signup.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case firstChoiceRoute:
        return MaterialPageRoute(
          builder: (_) => FirstChoicePage(),
        );
      case onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => OnBoardingPage(),
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case signUpRoute:
        return MaterialPageRoute(
          builder: (_) => SignUpPage(),
        );
      case homePetSitterRoute:
        return MaterialPageRoute(
          builder: (_) => HomePetSitterPage(),
        );
      case jobDetailsPetSitterRoute:
        if (args is JobDetails) {
          return MaterialPageRoute(
            builder: (_) => JobDetailsPetSitterPage(
              jobDetails: args,
            ),
          );
        }
        return _errorRoute();

      // case '/list':
      //   if (args is String) {
      //     return MaterialPageRoute(
      //       builder: (_) => ListPage(
      //         listNumber: args,
      //       ),
      //     );
      //   }
      //   return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error Loading Page'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            child: const Text('Error Loading Page'),
          ),
        ),
      );
    });
  }
}
