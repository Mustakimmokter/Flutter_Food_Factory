import 'package:flutter/material.dart';
import 'package:food_factory/features/on_board/ui/component/onboard_body.dart';
import 'package:food_factory/shared/infrastructure/index.dart';
class OnBoardScreenOne extends StatelessWidget {
  const OnBoardScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardBody(
        skip: (){
          Navigator.pushNamedAndRemoveUntil(context, AppRoute.logInScreen, (route) => false);
        },
        header: 'Find your favorite food\nfrom top restaurants',
        next: (){
          Navigator.pushNamedAndRemoveUntil(context, AppRoute.onboardTwo, (route) => false);
        },
        illustration: 'onboard_illustrations/onBoard_one_illustration.svg',
      ),
    );
  }
}
