import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onTap,
    this.icon,
    this.child,
    this.padding = 5,
    this.size,
  }) : super(key: key);

  final VoidCallback onTap;
  final String? icon;
  final double? padding, size;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(padding!),
        child: child ?? SvgPicture.asset('assets/$icon',width: size,height: size,),
      ),
    );
  }
}
