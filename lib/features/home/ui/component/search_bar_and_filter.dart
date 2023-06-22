
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class SearchBarAndFilter extends StatelessWidget {
  const SearchBarAndFilter({Key? key, required this.filter,}) : super(key: key);

  final VoidCallback filter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.transparent,
              shadowColor: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(100),
              elevation: 8,
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(right: 5),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 16,right: 12),
                      child: SvgPicture.asset('assets/icons/search_icon.svg',height: 20,),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                    ),
                    fillColor: whiteColor,
                    filled: true,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: filter,
            child: Container(
              padding: EdgeInsets.all(9),
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                color: primaryBrandColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: CustomSVG(svg: 'icons/sorting_icon.svg'),
            ),
          ),
        ],
      ),
    );
  }
}

