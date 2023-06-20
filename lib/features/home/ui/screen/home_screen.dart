import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_factory/features/home/ui/component/index.dart';
import 'package:food_factory/shared/constant/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';



class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

   final int _itemCount=2;


  @override
  Widget build(BuildContext context) {
    final pageController = PageController(viewportFraction: 0.9);
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: greyBackground,
      body: Column(
        children: [
          HomeHeader(),
         Expanded(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SearchBarAndFilter(
                   filter: (){
                     showModalBottomSheet(context: context, builder: (context) {
                       return CustomBottomSheet();
                     },);
                   },
                 ),
                 // Food items
                 SizedBox(
                   height: 130,
                   child: ListView.builder(
                     padding: const EdgeInsets.only(right: 20,top: 20,bottom: 20),
                     itemCount: ConstantImages.foodItemImages().length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) {
                       return FoodItem(
                         title: ConstantData.foodItemName()[index],
                         child: CustomSVG(svg: ConstantImages.foodItemImages()[index]),
                         onTap: (){},
                       );
                     },
                   ),
                 ),
                 // Popular foods
                 SizedBox(
                   height: 260,
                   width: SizeUtils.screenWidth,
                   child: PageView.builder(
                     controller: pageController,
                     //scrollDirection: Axis.horizontal,
                     //padEnds: false,
                     //reverse: true,
                     itemCount: _itemCount,
                     itemBuilder: (context, index) {
                       return  CustomContainer(
                         margin: EdgeInsets.only(top: 20,bottom: 20,left: 20),
                         //margin: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20,),
                         //height: 200,
                         //width: 160,
                         color: whiteColor,
                         isShadow: true,
                         blurRadius: 20,
                         offset: const Offset(5, 5),
                       );
                     },

                   ),
                 ),
                 const SizedBox(height: 20),
                 _slider(),
                 Container(
                   margin: EdgeInsets.all(20),
                   height: 200,
                   color: Colors.red,
                 ),
                 Container(
                   margin: EdgeInsets.all(20),
                   height: 200,
                   color: Colors.red,
                 ),
               ],
             ),
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


  Widget _slider (){
    return CarouselSlider.builder(
      itemCount: 5,
        itemBuilder: (context, index, realIndex) {
          return CustomContainer(
            margin: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
            height: 200,
            //width: 160,
            color: whiteColor,
            isShadow: true,
            blurRadius: 20,
            offset: Offset(5, 5),
          );
        },
        options: CarouselOptions(
          height: 270,
          //aspectRatio: 16/9,
          viewportFraction: 0.5,
          padEnds: false,
          //initialPage: 0,
          enableInfiniteScroll: false,
          //reverse: false,
          //autoPlay: true,
          //autoPlayInterval: Duration(seconds: 3),
         // autoPlayAnimationDuration: Duration(milliseconds: 800),
          //autoPlayCurve: Curves.fastOutSlowIn,
          //enlargeCenterPage: true,
          //enlargeFactor: 0.3,
          aspectRatio: 16/8,
          scrollDirection: Axis.horizontal,
        ),
    );
  }
}