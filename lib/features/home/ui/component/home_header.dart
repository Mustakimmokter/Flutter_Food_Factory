import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: topPadding,bottom: 10, left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconButton(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            icon: 'icons/menu_icon.svg',
          ),
          const CustomText(
            text: 'Mustakim, Narsingdi',
            size: 14,
            color: greyColor,
            overflow: TextOverflow.ellipsis,),
          ProfileContainer(
            proPic: 'images/Image_p.jpg',
          ),
        ],
      ),
    );
  }
}
