import 'package:flutter/material.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/custom_text.dart';
import 'package:food_factory/shared/widgets/list_container.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: ListContainer(
          margin: EdgeInsets.only(bottom: 20,left: 20),
          width: double.maxFinite,
          child: SizedBox(),
        ),
      ),
    );
  }
}
