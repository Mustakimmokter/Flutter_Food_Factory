import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key,
    required this.proPic,
    this.isNetworkImage = false,
    this.onTap,
    this.size,
  }) : super(key: key);

  final String proPic;
  final bool? isNetworkImage;
  final VoidCallback? onTap;
  final double? size;
  // final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size ?? 38,
        width: size ?? 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: primaryBrandColor),
          image: isNetworkImage! ? DecorationImage(
            image: NetworkImage(proPic),):
          DecorationImage(
            image: AssetImage('assets/$proPic',),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
