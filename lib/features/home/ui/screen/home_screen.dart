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
            profilePic: 'images/sodipto.jpg',
            onProfile: (){
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                constraints: BoxConstraints(
                    maxHeight: SizeUtils.screenHeight / 1.27,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                isScrollControlled: true,
                builder: (context) => Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 20),
                  child: Column(
                    children: [
                      const CustomContainer(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 6,
                        width: 50,
                        color: Color(0xffC4C4C4),
                      ),
                      Row(
                        children: [
                          CustomIconButton(
                            child: const Icon(Icons.arrow_back_ios,size: 18,),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                          const CustomText(text: 'My Profile',size: 18,fontWeight: FontWeight.w700,)
                        ],
                      ),
                      SizedBox(height: 30),
                      const ProfileContainer(
                        proPic: 'images/sodipto.jpg',
                        size: 70,
                      ),
                      SizedBox(height: 10),
                      CustomText(text: 'Sudipto Saha',size: 17),
                      SizedBox(height: 40),
                      _textAndRowButton('My Order',(){},),
                      _textAndRowButton('payment method',(){},),
                      _textAndRowButton('My Address',(){}),
                      _textAndRowButton('Phone Number',(){}),
                      _textAndRowButton('Email Address',(){}),
                      _textAndRowButton('Help',(){}),

                    ],
                  ),
                ),
              );
            },
          ),
          Expanded(
            child: Column(
              children: [
                SearchBarAndFilter(
                  filter: () {
                    showModalBottomSheet(
                      //backgroundColor: Colors.red,
                      context: context,
                      constraints: BoxConstraints(
                        maxHeight: SizeUtils.screenHeight / 1.27,
                      ),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                      ),
                      builder: (context) {
                        return const FilterContainer();
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

  Widget _textAndRowButton(String title,VoidCallback onTap){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: title,size: 15,),
          CustomIconButton(
            padding: 0,
            onTap: onTap,
            child: const Icon(Icons.arrow_forward_ios,size: 18,),
          ),
        ],
      ),
    );
  }
}