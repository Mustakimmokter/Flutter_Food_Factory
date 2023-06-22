import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_factory/shared/utils/index.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.onTap,
    this.title,
    this.assetIcon,
    this.size = 55,
  }) : super(key: key);

  final VoidCallback onTap;
  final String? assetIcon,title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: primaryBrandColor,
      padding: EdgeInsets.zero,
      minWidth: size,
      height: size,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      highlightElevation: 0,
      elevation: 0,
      onPressed: onTap,
      child: assetIcon != null? SvgPicture.asset(assetIcon!) : Text(
      title!,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'DM_Sans',
        fontWeight: FontWeight.w500,
        fontSize: size! / 4,
      ),
    ),
    );
  }
}
