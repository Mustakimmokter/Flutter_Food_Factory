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
            top: 65,
            child: Image.asset('assets/images/burger_illustration.png',height: 180),
          ),
          CustomContainer(
            margin: EdgeInsets.only(top: SizeUtils.screenHeight / 3.1),
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
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
                SizedBox(height: 12),
                CustomText(text: 'Fresh and healthy burger made with our own chef recipe. Special healthy and dish for those who want to gain weight  A Special Rolls, beef steak mince, olive oil, egg, onion, tomato. ',
                  size: 14,
                  color: greyColor,
                  fontWeight: FontWeight.normal,
                  align: TextAlign.start,
                ),
                SizedBox(height: 14),
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
                  height: 65,
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
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Add Extras :',size: 15,fontWeight: FontWeight.w700,color: greyColor,),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.all(1),
                          width: 16,
                          height: 16,
                          color: primaryBrandColor,
                          child: CustomContainer(
                            isBorder: true,
                            borderColor: whiteColor,
                          ),
                        ),
                        CustomText(text: 'Mashroom',size: 14,color: greyColor,),
                        Expanded(
                          child: CustomContainer(margin: EdgeInsets.symmetric(horizontal: 5),color: greyBackground,height: 2,radius: 0,)
                          ,),
                        CustomText(text: '\$2.00',size: 14,color: greyColor,),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.all(1),
                          width: 16,
                          height: 16,
                          isBorder: true,
                          borderColor: greyColor,
                          borderWidth: 4,
                        ),
                        CustomText(text: 'Mashroom',size: 14,color: greyColor,),
                        Expanded(
                          child: CustomContainer(margin: EdgeInsets.symmetric(horizontal: 5),color: greyBackground,height: 2,radius: 0,)
                          ,),
                        CustomText(text: '\$2.00',size: 14,color: greyColor,),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.all(1),
                          width: 16,
                          height: 16,
                          isBorder: true,
                          borderColor: greyColor,
                          borderWidth: 4,
                        ),
                        CustomText(text: 'Mashroom',size: 14,color: greyColor,),
                        Expanded(
                          child: CustomContainer(margin: EdgeInsets.symmetric(horizontal: 5),color: greyBackground,height: 2,radius: 0,)
                          ,),
                        CustomText(text: '\$2.00',size: 14,color: greyColor,),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          const Positioned(
            right: 30,
            child: CartQuantityContainer(
              quantity: '12',
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   CustomText(text: 'Price',color: greyColor,),
                   CustomText(text: ' \$12.30',size: 17,fontWeight: FontWeight.w700,),
                 ],
               ),
                SizedBox(width: 20,),
                Expanded(
                  child: FooterButton(
                    onTap: (){},
                    title: 'Add to cart',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
