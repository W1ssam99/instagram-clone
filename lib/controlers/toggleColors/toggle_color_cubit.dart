import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'toggle_color_state.dart';

class ToggleColorCubit extends Cubit<ToggleColorState> {
  bool isLike = false;
  ToggleColorCubit() : super(ToggleColorInitial());

  void toggleColor() {
    isLike = !isLike;
    emit(ToggleColorChanged(isLike));
  }
}
