import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader(
      {Key? key,
      required this.profilePic,
      required this.name,
      required this.location,
      required this.onProfile,
})
      : super(key: key);

  final String profilePic, name, location;
  final VoidCallback onProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: topPadding, bottom: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconButton(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            icon: 'icons/menu_icon.svg',
          ),
          CustomText(
            text: '$name, $location',
            size: 14,
            color: greyColor,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: onProfile,
            child: ProfileContainer(
              proPic: profilePic,
            ),
          ),
        ],
      ),
    );
  }
}
