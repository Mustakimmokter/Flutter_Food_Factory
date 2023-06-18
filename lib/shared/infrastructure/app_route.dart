import 'package:flutter/material.dart';
import 'package:food_factory/features/auth/forget_password/ui/screen/forget_screen.dart';
import 'package:food_factory/features/auth/log_in/ui/screen/log_in_screen.dart';
import 'package:food_factory/features/auth/otp/ui/otp_screen.dart';
import 'package:food_factory/features/auth/sign_up/ui/screen/sign_up_screen.dart';
import 'package:food_factory/features/home/ui/screen/home_screen.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_one.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_three.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_two.dart';
import 'package:food_factory/shared/widgets/custom_page_transition.dart';

class AppRoute {
  
  static const String onboardOne = '/OnboardScreenOne';
  static const String onboardTwo = '/OnboardScreenTwo';
  static const String onboardThree = '/OnboardScreenThree';
  static const String logInScreen = '/LogInScreen';
  static const String signUpScreen = '/SignUpScreen';
  static const String forgetPasswordScreen = '/ForgetPasswordScreen';
  static const String otpScreen = '/OTPScreen';
  static const String homeScreen = '/HomeScreen';

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
      case forgetPasswordScreen:
        return CustomPageTransition.pageTransition(child: ForgetPasswordScreen(),settings: settings);
      case otpScreen:
        return CustomPageTransition.pageTransition(child: OTPScreen(),settings: settings);
      case homeScreen:
        return CustomPageTransition.pageTransition(child: HomeScreen(),settings: settings);

      // Default Route
      default:
        return CustomPageTransition.pageTransition(child : OnBoardScreenOne(), settings: settings);
    }
    
  }
}