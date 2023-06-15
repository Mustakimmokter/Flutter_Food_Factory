import 'package:flutter/material.dart';
import 'package:food_factory/features/auth/log_in/log_in.dart';
import 'package:food_factory/features/auth/sign_up/ui/screen/sign_up_screen.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_one.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_three.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_two.dart';
import 'package:food_factory/shared/widgets/custom_page_transition.dart';

class AppRoute {
  
  static const String onboardOne = '/onboardScreenOne';
  static const String onboardTwo = '/onboardScreenTwo';
  static const String onboardThree = '/onboardScreenThree';
  static const String logInScreen = '/logInScreen';
  static const String signUpScreen = '/signUpScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    
    switch (settings.name){
      case onboardOne:
        return CustomPageTransition.pageTransition(child : OnBoardScreenOne(), settings: settings);
      case onboardTwo:
        return CustomPageTransition.pageTransition(child : OnBoardScreenTwo(), settings: settings);
      case onboardThree:
        return CustomPageTransition.pageTransition(child : OnBoardScreenThree(), settings: settings);
      case logInScreen:
        return CustomPageTransition.pageTransition(child: LogInScreen(),settings: settings);
      case signUpScreen:
        return CustomPageTransition.pageTransition(child: SignUpScreen(),settings: settings);

      // Default Route
      default:
        return CustomPageTransition.pageTransition(child : OnBoardScreenOne(), settings: settings);
    }
    
  }
}