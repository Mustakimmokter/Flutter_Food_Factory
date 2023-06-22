import 'package:flutter/material.dart';
import 'package:food_factory/features/near_all_restaurant/ui/component/index.dart';
import 'package:food_factory/shared/utils/index.dart';

class NearAllRestaurantScreen extends StatelessWidget {
  const NearAllRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      body: Column(
        children: [
          NearAllRestaurantHeader(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              scrollDirection: Axis.vertical,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const NearRestaurantsContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
