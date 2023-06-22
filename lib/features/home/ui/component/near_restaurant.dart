import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class NearByRestaurants extends StatelessWidget {
  const NearByRestaurants({
    Key? key,
    this.isFavorite = false,
  }) : super(key: key);

  // final VoidCallback onFavorite;
  // final String foodIcon, title, rate, rstName, price;
  final bool? isFavorite;

  @override
  Widget build(BuildContext context) {
    return ListContainer(
      width: SizeUtils.screenWidth / 1.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            child: CustomSVG(svg: 'icons/popular_foods/burger_icon.svg', width: 70),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Burger King',
                      size: 14,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: CustomIconButton(
                        padding: 0,
                        onTap: () {},
                        child: Icon(
                          isFavorite! ? Icons.favorite : Icons.favorite_border,
                          size: 20,
                          color: isFavorite! ? primaryBrandColor : greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: CustomText(
                    text: '\$\$ Fastfood, Cafe Shop and adda',
                    size: 12,
                    color: greyColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.orange.shade400,
                    ),
                    CustomText(
                      text: ' 4.7 (195)',
                      size: 12,
                      color: greyColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Row(
                  children: [
                   _textContainer('2.0 km'),
                   SizedBox(width: 5),
                   _textContainer('30 mins')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _textContainer(String text){
    return CustomContainer(
      padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
      color: greyBackground,
      child:  CustomText(
        text: text,
        size: 11,
        color: greyColor,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
