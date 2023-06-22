import 'package:flutter/material.dart';
import 'package:food_factory/features/food_details/ui/component/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(height: SizeUtils.screenHeight,),
          const Positioned(
              child: DetailsHeader()
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 70,
            child: Image.asset('assets/images/burger_illustration.png',height: 200),
          ),
          CustomContainer(
            margin: EdgeInsets.only(top: SizeUtils.screenHeight / 2.8),
            padding: EdgeInsets.all(20),
            width: double.maxFinite,
            color: whiteBackground,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                  color: primaryBrandColor,
                 child: CustomText(text: '5% off',size: 12,color: whiteColor,),
                ),
                SizedBox(height: 10),
                CustomText(text: 'Classic burger',size: 17,fontWeight: FontWeight.w700,),
                SizedBox(height: 20),
                CustomText(text: 'Fresh and healthy burger made with our own chef recipe. Special healthy and dish for those who want to gain weight  A Special Rolls, beef steak mince, olive oil, egg, onion, tomato. ',
                  size: 14,
                  color: greyColor,
                  fontWeight: FontWeight.normal,
                  align: TextAlign.start,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,size: 18,),
                    SizedBox(width: 2),
                    CustomText(text: '70 Calory',size: 14,),
                    SizedBox(width: 12),
                    Icon(Icons.watch_later_outlined,size: 17,),
                    SizedBox(width: 2),
                    CustomText(text: '30 mins',size: 14,),
                    SizedBox(width: 12),
                    CustomText(text: '\$ Free Delivery',size: 14,),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CustomText(text: 'Quantity :',size: 15,fontWeight: FontWeight.w700,color: greyColor,),
                    SizedBox(width: 10),
                    RoundRectangularButton(
                      width: 22,
                      height: 22,
                      isOutline: true,
                      onTap: (){},
                      title: '-',
                    ),
                    SizedBox(width: 10),
                    CustomText(text: '1',size: 16,fontWeight: FontWeight.w700),
                    SizedBox(width: 10),
                    RoundRectangularButton(
                      width: 22,
                      height: 22,
                      onTap: (){},
                      title: '+',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomContainer(
                  padding: EdgeInsets.all(10),
                  height: 70,
                  width: double.maxFinite,
                  isBorder: true,
                  radius: 10,
                  child: Row(
                    children: [
                      Image.asset('assets/images/mc_donalds.png',),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Mc Donald’s',size: 14,fontWeight: FontWeight.w700,),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 14,
                                color: Colors.orange.shade400,
                              ),
                              CustomText(
                                text: '4.7 (185)',
                                size: 12,
                                color: greyColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          const Positioned(
            right: 20,
            child: CartQuantityContainer(
              quantity: '12',
            ),
          ),
        ],
      ),
    );
  }
}
