part of 'nav_controler_cubit.dart';

@immutable
abstract class NavControlerState {}

class NavControlerInitial extends NavControlerState {}

class NavControlerChangeIndex extends NavControlerState {
  final int index;
  NavControlerChangeIndex(this.index);
}
