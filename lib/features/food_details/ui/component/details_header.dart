import 'package:flutter/material.dart';
import 'package:food_factory/shared/widgets/index.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
          ),
          CustomIconButton(
            onTap: (){},
            child: const Icon(Icons.favorite_outline,color: Colors.white,size: 22,),
          ),
        ],
      ),
    );
  }
}
