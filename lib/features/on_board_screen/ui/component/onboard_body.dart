import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/size_utils.dart';
import 'package:food_factory/shared/utils/utils.dart';
import 'package:food_factory/shared/widgets/index.dart';

class OnboardBody extends StatelessWidget {
  const OnboardBody({
    Key? key,
    required this.skip,
    required this.next,
    required this.header,
    required this.illustration,
  }) : super(key: key);

  final VoidCallback skip, next;
  final String header, illustration;

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(
            top: topPadding, left: horizontalPadding, right: horizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CustomTextButton(
                title: 'Skip',
                onTap: skip,
              ),
            ),
             CustomText(
              text: header,
              size: headerFontSize,
              fontWeight: FontWeight.w700,
            ),
            RoundedButton(
              title: 'Next',
              onTap: next,
            ),
            SizedBox(),
            CustomSVG(
              svg: illustration,
              height: SizeUtils.getProportionateScreenHeight(280),
            ),
          ],
        ),
      ),
    );
  }
}
