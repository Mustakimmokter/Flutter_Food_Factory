import 'package:flutter/material.dart';
import 'package:food_factory/features/on_board_screen/ui/component/onboard_body.dart';
import 'package:food_factory/shared/infrastructure/index.dart';

class OnBoardScreenTwo extends StatelessWidget {
  const OnBoardScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardBody(
        skip: (){},
        header: 'Get fastest delivery\nat your door step',
        next: (){
          Navigator.pushNamedAndRemoveUntil(context, AppRoute.onboardThree, (route) => false);
        },
        illustration: 'onboard_illustrations/onBoard_two_illustration.svg',

      ),
    );
  }
}
