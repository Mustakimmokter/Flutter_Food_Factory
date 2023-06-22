import 'package:flutter/material.dart';
import 'package:food_factory/features/all_popular_food/ui/component/index.dart';
import 'package:food_factory/shared/infrastructure/app_route.dart';
import 'package:food_factory/shared/utils/index.dart';

class PopularFoodScreen extends StatelessWidget {
  const PopularFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      body: Column(
        children: [
          const PopularFoodHeader(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              scrollDirection: Axis.vertical,
              itemCount: 12,
              itemBuilder: (context, index) {
                return PopularFoodContainer(
                  foodIcon: 'icons/popular_foods/burger_icon.svg',
                  title: 'Beef Burger',
                  rstName: '\$\$ Fastfood, Cafe Shop',
                  rate: ' 4.7 (195)',
                  onDetails: (){
                    Navigator.pushNamed(context, AppRoute.foodDetailsScreen);
                  },
                  onFavorite: (){},
                  isFavorite: true,
                  price: '\$10',
                  addCart: (){},
                  seeAll: (){},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
