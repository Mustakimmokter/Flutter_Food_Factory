import 'package:flutter/material.dart';
import 'package:food_factory/shared/widgets/index.dart';
import 'package:food_factory/shared/utils/index.dart';

class BackAndHeader extends StatelessWidget {
  const BackAndHeader({Key? key, required this.back,required this.phone,}) : super(key: key);

  final VoidCallback back;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CustomIconButton(
            padding: 0,
            icon: 'icons/back_arrow.svg',
            onTap: back,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Verification',
                fontWeight: FontWeight.w700,
                align: TextAlign.left,
                size: headerFontSize,
                color: primaryBrandColor,
              ),
              const SizedBox(height: 10),
              CustomText(
                text: 'Please enter the OTP code We have\nsent to $phone',
                align: TextAlign.start,
                size: 15,
              ),
              const SizedBox(height: 10),


            ],
          ),
        ),
      ],
    );
  }
}
