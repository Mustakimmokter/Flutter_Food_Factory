import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_factory/shared/navbar_controller/navbar_cubit/navbar_event.dart';
import 'package:food_factory/shared/navbar_controller/navbar_cubit/navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent,NavbarState>{
  NavbarBloc():super(NavbarInitialState()){

    on(_changeScreen);
  }

  int index = 0;

  void _changeScreen(NavbarChangeEvent event,Emitter<NavbarState> emit){
    emit(NavbarScreenChanged());
    if(state is NavbarScreenChanged){
      index = event.index;
      emit(NavbarScreenUpdate());
    }

  }

}