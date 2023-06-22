import 'package:flutter/material.dart';
import 'package:food_factory/features/home/ui/component/index.dart';
import 'package:food_factory/shared/constant/index.dart';
import 'package:food_factory/shared/infrastructure/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final int _itemCount = 5;

  @override
  Widget build(BuildContext context) {
    final pageController =
        PageController(viewportFraction: 0.55, initialPage: 0);
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: greyBackground,
      body: Column(
        children: [
          HomeHeader(
            name: 'Mustakim',
            location: 'Narsingdi',
            profilePic: 'images/Image_p.jpg',
            onProfile: (){
              showModalBottomSheet(
                context: context,
                builder: (context) => CustomBottomSheet(),
              );
            },
          ),
          Expanded(
            child: Column(
              children: [
                SearchBarAndFilter(
                  filter: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CustomBottomSheet();
                      },
                    );
                  },
                ),
                // Food items
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.only(right: 20, top: 20,bottom: 20),
                    itemCount: ConstantImages.foodItemImages().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FoodItem(
                        title: ConstantData.foodItemName()[index],
                        child: CustomSVG(
                            svg: ConstantImages.foodItemImages()[index]),
                        onTap: () {},
                      );
                    },
                  ),
                ),
                // Popular foods Text and See All Button,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(text: 'Popular foods'),
                      CustomTextButton(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoute.popularFoodScreen);
                        },
                        title: 'See All',
                        padding: 0,
                      )
                    ],
                  ),
                ),
                // Popular foods
                SizedBox(
                  height: 260,
                  child: ListView.builder(
                    padding: EdgeInsets.only(right: 20,bottom: 20,top: 14),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return PopularFoods(
                          onFavorite: (){},
                          isFavorite: true,
                          addCart: (){},
                          foodIcon: 'icons/popular_foods/burger_icon.svg',
                          title: 'Beef Burger',
                          rate: '4.6',
                          rstName: 'McDonald’s',
                          price: '\$10.0');
                    },
                  ),
                ),
                // Near Restaurants Text and See All Button,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(text: 'Nearby Restaurants'),
                      CustomTextButton(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoute.allRestaurantScreen);
                        }, 
                        title: 'See All',padding: 0,
                      )
                    ],
                  ),
                ),
                // Near Restaurants,
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(right: 20,top: 14),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return NearByRestaurants();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Container(
        color: whiteBackground,
        width: SizeUtils.screenWidth - SizeUtils.screenWidth / 4,
      ),
    );
  }
}