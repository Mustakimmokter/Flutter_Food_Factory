import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/utils.dart';
import 'package:food_factory/shared/widgets/index.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: topPadding, left: 20,bottom: 10),
      child: Row(
        children: [
          CustomIconButton(
            child: Icon(Icons.arrow_back_ios,size: 18,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          CustomText(text: 'My Cart',size: 18,)
        ],
      ),
    );
  }
}
