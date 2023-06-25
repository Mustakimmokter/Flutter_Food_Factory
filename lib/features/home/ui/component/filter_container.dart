import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: CustomContainer(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 6,
                  width: 50,
                  color: Color(0xffC4C4C4),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(text: 'Filter',size: 20,fontWeight: FontWeight.w700,),
                  CustomTextButton(
                    title: 'Clear filter',
                    size: 14,
                    onTap: (){
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const CustomText(text: 'Sort By',size: 16,),
              const SizedBox(height: 10,),
              CustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 10),
                radius: 5,
                height: 30,
                width: double.maxFinite,
                alignment: Alignment.centerLeft,
                borderWidth: 1,
                borderColor: primaryBrandColor,
                isBorder: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(text: 'Most popular',size: 13,),
                    Icon(Icons.keyboard_arrow_down,size: 30,),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const CustomText(text: 'Price',size: 16,),
              Slider(
                value: .5,
                onChanged: (value){},
                label: 'dsfdsf',
              ),
              const SizedBox(height: 20,),
              const CustomText(text: 'Rating',size: 16,),
              const SizedBox(height: 10,),
              Wrap(
                children: List.generate(5, (index) {
                  return CustomContainer(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    width: 45,
                    color: greyBackground,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: '${index + 1}',size: 12,fontWeight: FontWeight.w700,color: greyColor),
                        const SizedBox(width: 5),
                        const Icon(Icons.star,size: 14,color: greyColor),
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20,),
              const CustomText(text: 'Tags',size: 16,),
              const SizedBox(height: 10,),
              Wrap(
                children: List.generate(8, (index) {
                  return const CustomContainer(
                    margin: EdgeInsets.only(left: 10,bottom: 10),
                    padding: EdgeInsets.symmetric(vertical: 1,horizontal: 5),
                    color: greyBackground,
                    child: CustomText(text: 'Burger',size: 12,fontWeight: FontWeight.w700,color: greyColor,),
                  );
                }),
              ),
              CustomTextButton(
                title: 'Show More',
                size: 14,
                onTap: (){
                },
              ),
            ],
          ),
          FooterButton(
            onTap: (){},
            title: 'Apply',
          ),

        ],
      ),
    );
  }
}
