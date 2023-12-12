import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'toggle_color_state.dart';

class ToggleLikeCubit extends Cubit<ToggleLikeState> {
  bool isLike = false;
  ToggleLikeCubit() : super(ToggleColorInitial());

  void toggleColor() {
    isLike = !isLike;
    emit(ToggleColorChanged(isLike));
  }
}
