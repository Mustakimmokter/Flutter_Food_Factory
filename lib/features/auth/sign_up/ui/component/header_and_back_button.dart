import 'package:flutter/material.dart';
import 'package:food_factory/shared/widgets/index.dart';
import 'package:food_factory/shared/utils/index.dart';

class HeaderAndBackButton extends StatelessWidget {
  const HeaderAndBackButton({Key? key, required this.back}) : super(key: key);

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
       const Align(
         alignment: Alignment.topLeft,
         child: CustomText(
           text: 'Create your\naccount',
           fontWeight: FontWeight.w700,
           align: TextAlign.left,
           size: headerFontSize,
           color: primaryBrandColor,
         ),
       ),
     ],
    );
  }
}
