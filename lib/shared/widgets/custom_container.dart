import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.color,
    this.shadowsColor,
    this.child,
    this.margin,
    this.padding,
    this.radius,
    this.height,
    this.width,
    this.offset,
    this.isShadow = false,
    this.borderRadius,
    this.blurRadius,
    this.alignment,
    this.borderColor,
    this.isBorder = false,
    this.borderWidth,
  }) : super(key: key);

  final Color? color, shadowsColor, borderColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin, padding;
  final double? radius, height, width,blurRadius,borderWidth;
  final Offset? offset;
  final bool? isShadow,isBorder;
  final BorderRadius? borderRadius;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
          color: isBorder!? Colors.transparent : color,
          border: Border.all(width: borderWidth ?? 1.5,color: isBorder! ? borderColor ?? greyBackground : Colors.transparent),
          borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 15),
          boxShadow: isShadow!
              ? [
                  BoxShadow(
                    blurRadius: blurRadius ?? 10,
                    offset: offset ?? const Offset(1, 1),
                    color: shadowsColor ?? shadowColor,
                  ),
                ]
              : [],
      ),
      child: child,
    );
  }
}
