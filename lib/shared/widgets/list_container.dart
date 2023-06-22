import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({
    Key? key,

    required this.width,
    required this.child,
    this.height = 130,
    this.color = Colors.white,
    this.margin,
    this.padding,
    this.borderRadius,
    this.blurRadius,
    this.offset,
    this.isShadow = false,
  }) : super(key: key);

  final double height, width;
  final Widget child;
  final EdgeInsetsGeometry? margin, padding;
  final Color? color;
  final double? borderRadius, blurRadius;
  final Offset? offset;
  final bool? isShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(left: 20,),
      padding: padding ?? const EdgeInsets.all(14),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        boxShadow: isShadow!
            ? [
          BoxShadow(
            blurRadius: blurRadius ?? 20,
            offset: offset ?? const Offset(2, 2),
            color: Colors.black.withOpacity(.06),
          ),
        ]
            : [],
      ),
      child: child,
    );
  }
}