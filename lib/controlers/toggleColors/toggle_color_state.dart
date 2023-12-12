part of 'toggle_color_cubit.dart';

@immutable
abstract class ToggleLikeState {}

class ToggleColorInitial extends ToggleLikeState {}

class ToggleColorChanged extends ToggleLikeState {
  final bool isLike;
  ToggleColorChanged(this.isLike);
}
