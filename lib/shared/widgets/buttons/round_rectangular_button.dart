import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/color_utils.dart';

class RoundRectangularButton extends StatelessWidget {
  const RoundRectangularButton({
    Key? key,
    required this.onTap,
    this.title,
    this.child,
    this.height = 20,
    this.width = 20,
    this.textSize = 16,
    this.borderRadius,
    this.isOutline = false,
  }) : super(key: key);

  final VoidCallback onTap;
  final String? title;
  final Widget? child;
  final double? height,textSize, width, borderRadius;
  final bool? isOutline;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: RawMaterialButton(
        onPressed: (){},
        fillColor: isOutline!? Colors.transparent : primaryBrandColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          side: BorderSide(color: isOutline!? greyColor: Colors.transparent),
        ),
        padding: EdgeInsets.zero,
        elevation: 0,
        highlightElevation: 0,
        child: title != null
            ? Text(
          title!,
          style: TextStyle(
              color: isOutline! ? blackColor : Colors.white,
              fontFamily: 'DM_Sans',
              fontWeight: FontWeight.w700,
              fontSize: textSize
          ),
        )
            : child,
      ),
    );
  }
}
