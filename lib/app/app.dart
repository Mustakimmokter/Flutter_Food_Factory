import 'package:flutter/material.dart';
import 'package:food_factory/features/home/ui/screen/home_screen.dart';
import 'package:food_factory/shared/infrastructure/index.dart';
import 'package:food_factory/shared/utils/color_utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customMaterialColor(primaryBrandColor)
      ),
      //home: CustomPageSnapping(),
      initialRoute: AppRoute.onboardOne,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
