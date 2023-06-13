import 'package:flutter/material.dart';

class CustomPageTransition {

  static PageRouteBuilder<dynamic> pageTransition({required Widget child, RouteSettings? settings}){

    return PageRouteBuilder<dynamic>(
      pageBuilder: (context, animation, secondaryAnimation) {
        return child;
      },
      settings: settings,
      transitionDuration:  const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(Tween(begin: const Offset(1, 0),end: const Offset(0, 0))),
          child: child,
        );
      },
    );
  }
}