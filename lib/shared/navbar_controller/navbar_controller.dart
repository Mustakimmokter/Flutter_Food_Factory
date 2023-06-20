import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_factory/features/auth/log_in/ui/screen/log_in_screen.dart';
import 'package:food_factory/features/cart/ui/screen/cart_screen.dart';
import 'package:food_factory/features/favorite/ui/screen/favorite_screen.dart';
import 'package:food_factory/features/home/ui/screen/home_screen.dart';
import 'package:food_factory/features/offer/ui/screen/offer_screen.dart';
import 'package:food_factory/shared/infrastructure/index.dart';
import 'package:food_factory/shared/navbar_controller/navbar_cubit/navabar_bloc.dart';
import 'package:food_factory/shared/navbar_controller/navbar_cubit/navbar_event.dart';
import 'package:food_factory/shared/navbar_controller/navbar_cubit/navbar_state.dart';
import 'package:food_factory/shared/widgets/navbar/index.dart';

class NavbarController extends StatelessWidget {
  const NavbarController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarBloc(),
      child: NavbarBody(),
    );
  }
}


class NavbarBody extends StatelessWidget {
  NavbarBody({Key? key}) : super(key: key);

  final List<Widget> _screens = [
    const HomeScreen(),
    OfferScreen(),
    SizedBox(),
    FavoriteScreen()
  ];

  late NavbarBloc _navbarBloc;


  @override
  Widget build(BuildContext context) {
    _navbarBloc = BlocProvider.of<NavbarBloc>(context);
    return BlocBuilder<NavbarBloc,NavbarState>(
      bloc: _navbarBloc,
      builder: (context, state) {
          return  Scaffold(
            body: state is NavbarScreenUpdate? _screens[_navbarBloc.index]:_screens[0],
            bottomNavigationBar: BlocListener<NavbarBloc,NavbarState>(
              listener: (context, state) {
                if(_navbarBloc.index == 2){
                  Navigator.pushNamed(context, AppRoute.cartScreen);
                }
              },
              child: Navbar(
                selectedIndex: state is NavbarScreenUpdate? _navbarBloc.index : 0,
                onTap: (value){
                  _navbarBloc.add(NavbarChangeEvent(index: value));
                  print(_navbarBloc.index);
                },
              ),
            ),
          );
      },
    );
  }
}