import 'package:flutter/material.dart';
import 'package:food_factory/shared/widgets/index.dart';
import 'package:food_factory/shared/utils/index.dart';

class BackButtonAndHeader extends StatelessWidget {
  const BackButtonAndHeader({Key? key, required this.back}) : super(key: key);

  final VoidCallback back;

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
            children: const [
              CustomText(
                text: 'Forgot password',
                fontWeight: FontWeight.w700,
                align: TextAlign.left,
                size: headerFontSize,
                color: primaryBrandColor,
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Please enter you email to received a link\nto create a new password via mail',
                align: TextAlign.start,
              ),
              SizedBox(height: 10),


            ],
          ),
        ),
      ],
    );
  }
}
