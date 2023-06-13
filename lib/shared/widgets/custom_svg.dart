import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSVG extends StatelessWidget {
  const CustomSVG({
    Key? key,
    required this.svg,
    this.isNetworkSvg = false,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final String svg;
  final bool? isNetworkSvg;
  final double? height, width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return isNetworkSvg!
        ? SvgPicture.network(
            svg,
            color: color,
            height: height,
            width: width,
          )
        : SvgPicture.asset(
            'assets/$svg',
            color: color,
            height: height,
            width: width,
          );
  }
}
