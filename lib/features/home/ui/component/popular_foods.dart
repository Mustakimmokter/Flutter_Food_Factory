import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class PopularFoods extends StatelessWidget {
  const PopularFoods(
      {Key? key,
      required this.onFavorite,
      required this.addCart,
      required this.foodIcon,
      required this.title,
      required this.rate,
      required this.rstName,
      required this.price,
      this.isFavorite = false,
      })
      : super(key: key);

  final VoidCallback onFavorite, addCart;
  final String foodIcon, title, rate, rstName, price;
  final bool? isFavorite;

  @override
  Widget build(BuildContext context) {
    return ListContainer(
      width: SizeUtils.screenWidth / 2.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          CustomSVG(
              svg: foodIcon,
              width: SizeUtils.screenWidth / 3.6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                size: 14,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14,
                    color: Colors.orange.shade400,
                  ),
                  Expanded(
                    child: CustomText(
                      align: TextAlign.left,
                      text: ' $rate  $rstName',
                      size: 12,
                      color: greyColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    text: '\$10',
                  ),
                  RoundRectangularButton(
                    title: '+',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
