import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/color_utils.dart';
import 'package:food_factory/shared/widgets/index.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.child,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomContainer(
              padding: const EdgeInsets.all(14),
              isShadow: true,
              color: whiteColor,
              width: 65,
              height: 65,
              child: child,
            ),
            CustomText(
              text: title,
              color: greyColor,
            ),
          ],
        ),
      ),
    );
  }
}
