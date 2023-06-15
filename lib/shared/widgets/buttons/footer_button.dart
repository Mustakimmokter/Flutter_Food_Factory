import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/color_utils.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({
    Key? key,
    required this.onTap,
    this.title,
    this.child,
    this.height = 50,
    this.textSize = 16
  }) : super(key: key);

  final VoidCallback onTap;
  final String? title;
  final Widget? child;
  final double? height,textSize;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: primaryBrandColor,
      padding: EdgeInsets.zero,
      minWidth: double.maxFinite,
      height: height,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      highlightElevation: 0,
      elevation: 0,
      onPressed: onTap,
      child: title != null
          ? Text(
        title!,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'DM_Sans',
          fontWeight: FontWeight.w500,
          fontSize: textSize
        ),
      )
          : child,
    );
  }
}
