import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class PopularFoodContainer extends StatelessWidget {
  const PopularFoodContainer({
    Key? key,
    this.isFavorite = false,
    required this.onFavorite,
    required this.onDetails,
    required this.foodIcon,
    required this.title,
    required this.rate,
    required this.rstName,
    required this.price,
    required this.addCart,
    required this.seeAll,
  }) : super(key: key);

  final VoidCallback onFavorite, onDetails, addCart, seeAll;
  final String foodIcon, title, rate, rstName, price;
  final bool? isFavorite;

  @override
  Widget build(BuildContext context) {
    return ListContainer(
      margin: const EdgeInsets.only(bottom: 20),
      width: SizeUtils.screenWidth,
      //height: SizeUtils.screenHeight / 6,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: onDetails,
              child: CustomSVG(svg: foodIcon, width: 80),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: title,
                      size: 15,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: CustomIconButton(
                        padding: 0,
                        onTap: onFavorite,
                        child: Icon(
                          isFavorite! ? Icons.favorite : Icons.favorite_border,
                          size: 20,
                          color: isFavorite! ? primaryBrandColor : greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomText(
                  align: TextAlign.start,
                  text: rstName,
                  size: 12,
                  color: greyColor,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.orange.shade400,
                    ),
                    CustomText(
                      text: rate,
                      size: 12,
                      color: greyColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                CustomTextButton(
                  onTap: seeAll,
                  title: 'See All',
                  padding: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: price,
                    ),
                    RoundRectangularButton(
                      width: 22,
                      height: 22,
                      title: '+',
                      onTap: addCart,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
