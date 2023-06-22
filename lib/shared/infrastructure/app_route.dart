import 'package:flutter/material.dart';
import 'package:food_factory/features/all_popular_food/ui/screen/popular_food_screen.dart';
import 'package:food_factory/features/auth/forget_password/ui/screen/forget_screen.dart';
import 'package:food_factory/features/auth/log_in/ui/screen/log_in_screen.dart';
import 'package:food_factory/features/auth/otp/ui/otp_screen.dart';
import 'package:food_factory/features/auth/sign_up/ui/screen/sign_up_screen.dart';
import 'package:food_factory/features/cart/ui/screen/cart_screen.dart';
import 'package:food_factory/features/food_details/ui/screen/food_details_screen.dart';
import 'package:food_factory/features/home/ui/screen/home_screen.dart';
import 'package:food_factory/features/near_all_restaurant/ui/screen/near_all_restaurant_screen.dart';
import 'package:food_factory/features/on_board/ui/screens/index.dart';
import 'package:food_factory/shared/navbar_controller/navbar_controller.dart';
import 'package:food_factory/shared/widgets/custom_page_transition.dart';

class AppRoute {
  
  static const String onboardOne = '/OnboardScreenOne';
  static const String onboardTwo = '/OnboardScreenTwo';
  static const String onboardThree = '/OnboardScreenThree';
  static const String logInScreen = '/LogInScreen';
  static const String signUpScreen = '/SignUpScreen';
  static const String forgetPasswordScreen = '/ForgetPasswordScreen';
  static const String otpScreen = '/OTPScreen';
  static const String navbarController = '/NavbarController';
  static const String homeScreen = '/HomeScreen';
  static const String cartScreen = '/CartScreen';
  static const String allRestaurantScreen = '/AllRestaurantScreen';
  static const String popularFoodScreen = '/PopularFoodScreen';
  static const String foodDetailsScreen = '/FoodDetailsScreen';

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
      case navbarController:
        return CustomPageTransition.pageTransition(child: NavbarController(),settings: settings);
      case cartScreen:
        return CustomPageTransition.pageTransition(child: CartScreen(),settings: settings);
      case allRestaurantScreen:
        return CustomPageTransition.pageTransition(child: NearAllRestaurantScreen(),settings: settings);
      case popularFoodScreen:
        return CustomPageTransition.pageTransition(child: PopularFoodScreen(),settings: settings);
      case foodDetailsScreen:
        return CustomPageTransition.pageTransition(child: FoodDetailsScreen(),settings: settings);

      // Default Route
      default:
        return CustomPageTransition.pageTransition(child : OnBoardScreenOne(), settings: settings);
    }
    
  }
}