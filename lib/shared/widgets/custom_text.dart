import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.color = blackColor,
    this.fontWeight = FontWeight.w500,
    this.size = 16,
    this.letterSpace,
    this.align = TextAlign.center,
    this.overflow,
  }) : super(key: key);

  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size,letterSpace;
  final TextAlign? align;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontFamily: 'DM_Sans',
        overflow: overflow,
        letterSpacing: letterSpace,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
