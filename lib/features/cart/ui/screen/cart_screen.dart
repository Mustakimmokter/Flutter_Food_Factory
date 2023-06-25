import 'package:flutter/material.dart';
import 'package:food_factory/features/cart/ui/component/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      body: Column(
        children: [
          CartHeader(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListContainer(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  width: double.maxFinite,
                  height: 80,
                  isShadow: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                       children: [
                         GestureDetector(
                           onTap: (){},
                           child: CustomSVG(svg: 'icons/popular_foods/burger_icon.svg',width: 60,),
                         ),
                         const SizedBox(width: 20),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CustomText(
                               text: 'Beef Burger',
                               size: 17,
                             ),
                             CustomText(
                               align: TextAlign.start,
                               text: '\$12.30',
                               size: 14,
                               overflow: TextOverflow.ellipsis,
                             ),
                           ],
                         ),
                       ],
                     ),
                      Row(
                        children: [
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
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Column(
              children: [
                CustomContainer(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  color: whiteColor,
                  radius: 10,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Subtotal',
                            size: 15,
                          ),
                          CustomText(
                            text: '\$35.30',
                            size: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Delivery Fee',
                            size: 15,
                          ),
                          CustomText(
                            text: '\$.80',
                            size: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      CustomContainer(
                        color: greyBackground,
                        height: 1.5,
                        radius: 0,
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Total',
                            size: 17,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: '\$36.10',
                            size: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                FooterButton(
                  onTap: (){},
                  title: 'Place order',
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
