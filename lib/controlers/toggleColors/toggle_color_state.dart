part of 'toggle_color_cubit.dart';

@immutable
abstract class ToggleColorState {}

class ToggleColorInitial extends ToggleColorState {}

class ToggleColorChanged extends ToggleColorState {
  final bool isLike;
  ToggleColorChanged(this.isLike);
}
