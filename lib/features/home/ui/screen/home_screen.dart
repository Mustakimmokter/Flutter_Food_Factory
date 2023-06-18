import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_factory/features/home/ui/component/index.dart';
import 'package:food_factory/shared/constant/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                   child: PageView.builder(
                     controller: PageController(viewportFraction: .55,),
                     padEnds: false,
                     //reverse: true,
                     itemCount: 5,
                     itemBuilder: (context, index) {
                       return CustomContainer(
                         margin: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: index == 4? 20:0),
                         height: 200,
                         color: whiteColor,
                         isShadow: true,
                         blurRadius: 20,
                         offset: Offset(5, 5),
                       );
                     },

                   ),
                 ),
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
         )
        ],
      ),
      drawer: Container(
        color: whiteBackground,
        width: SizeUtils.screenWidth - SizeUtils.screenWidth / 4,
      ),
    );
  }
}
