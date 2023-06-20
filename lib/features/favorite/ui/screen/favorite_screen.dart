import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/color_utils.dart';
import 'package:food_factory/shared/widgets/custom_text.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      body: Center(
        child: CustomText(text: 'FavoriteScreen',size: 20,),
      ),
    );
  }
}
