import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class CartQuantityContainer extends StatelessWidget {
  const CartQuantityContainer({Key? key, required this.quantity}) : super(key: key);

  final String quantity;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.only(top: SizeUtils.screenHeight / 3.4),
      height: 45,
      width: 45,
      radius: 100,
      color: greyBackground,
      child: Stack(
        children: [
          const Positioned(
            left: 7,
            top: 6,
            child: Icon(Icons.shopping_bag_outlined,color: greyColor,size: 28,),
          ),
          CustomContainer(
            margin: const EdgeInsets.only(left: 21,top: 21),
            height: 16,
            width: 16,
            alignment: Alignment.center,
            color: primaryBrandColor,
            child: CustomText(text: quantity,size: 10,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
