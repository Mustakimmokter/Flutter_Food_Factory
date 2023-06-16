import 'package:flutter/material.dart';
import 'package:food_factory/features/on_board_screen/ui/component/onboard_body.dart';
import 'package:food_factory/shared/infrastructure/app_route.dart';

class OnBoardScreenThree extends StatelessWidget {
  const OnBoardScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardBody(
        skip: (){
          Navigator.pushNamedAndRemoveUntil(context, AppRoute.logInScreen, (route) => false);
        },
        header: 'Enjoy delicious foods\n and have fun',
        next: (){
          Navigator.pushNamedAndRemoveUntil(context, AppRoute.logInScreen, (route) => false);
        },
        illustration: 'onboard_illustrations/onBoard_three_illustration.svg',
      ),
    );
  }
}
