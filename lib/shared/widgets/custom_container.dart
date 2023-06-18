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
    this.borderRadius,
    this.height,
    this.width,
    this.offset,
    this.isShadow = false,
    this.blurRadius,
  }) : super(key: key);

  final Color? color, shadowsColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin, padding;
  final double? borderRadius, height, width,blurRadius;
  final Offset? offset;
  final bool? isShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
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
