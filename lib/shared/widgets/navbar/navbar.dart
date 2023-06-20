import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/color_utils.dart';
class Navbar extends StatelessWidget {
  const Navbar({Key? key, required this.onTap, required this.selectedIndex}) : super(key: key);

  final Function(int) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      onTap: onTap,
      currentIndex: selectedIndex,
      selectedItemColor: primaryBrandColor,
      showUnselectedLabels: true,
      unselectedItemColor: greyColor,
      selectedFontSize: 12,
      items: [
        BottomNavigationBarItem(icon: selectedIndex == 0? Icon(Icons.home): Icon(Icons.home_outlined),label: 'Home'),
        BottomNavigationBarItem(icon: selectedIndex == 1? Icon(Icons.local_offer) : Icon(Icons.local_offer_outlined),label: 'Offer'),
        BottomNavigationBarItem(icon: selectedIndex == 2? Icon(Icons.shopping_bag): Icon(Icons.shopping_bag_outlined),label: 'Cart'),
        BottomNavigationBarItem(icon: selectedIndex == 3? Icon(Icons.favorite) : Icon(Icons.favorite_border),label: 'Favorite'),
      ],
    );
  }
}
