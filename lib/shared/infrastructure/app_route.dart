import 'package:flutter/material.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_one.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_three.dart';
import 'package:food_factory/features/on_board_screen/ui/screens/screen_two.dart';
import 'package:food_factory/shared/widgets/custom_page_transition.dart';

class AppRoute {
  
  static const String onboardOne = '/onboardScreenOne';
  static const String onboardTwo = '/onboardScreenTwo';
  static const String onboardThree = '/onboardScreenThree';
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    
    switch (settings.name){
      case onboardOne:
        return CustomPageTransition.pageTransition(child : OnBoardScreenOne(), settings: settings);
      case onboardTwo:
        return CustomPageTransition.pageTransition(child : OnBoardScreenTwo(), settings: settings);
      case onboardThree:
        return CustomPageTransition.pageTransition(child : OnBoardScreenThree(), settings: settings);

      // Default Route
      default:
        return CustomPageTransition.pageTransition(child : OnBoardScreenOne(), settings: settings);
    }
    
  }
}