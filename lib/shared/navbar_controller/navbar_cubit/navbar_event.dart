import 'package:equatable/equatable.dart';

abstract class NavbarEvent extends Equatable{}

class NavbarChangeEvent extends NavbarEvent{
    NavbarChangeEvent({required this.index});
  final int index;

  @override
  List<Object?> get props => [index];
}