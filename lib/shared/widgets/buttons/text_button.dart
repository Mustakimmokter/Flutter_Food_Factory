import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.padding = 5,
    this.color = primaryBrandColor,
    this.size = 15,
    this.fontWeight = FontWeight.w500,
    this.isUnderline = false,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final double? padding, size;
  final Color? color;
  final FontWeight? fontWeight;
  final bool? isUnderline;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(padding!),
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontFamily: 'DM_Sans',
            fontWeight: fontWeight,
            fontSize: size,
            decoration: isUnderline! ? TextDecoration.underline: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
