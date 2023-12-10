import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nav_controler_state.dart';

class NavControlerCubit extends Cubit<NavControlerState> {
  int _currentIndex = 0;
  NavControlerCubit() : super(NavControlerInitial());

  void changeIndex(int index) {
    _currentIndex = index;
    emit(NavControlerChangeIndex(index));
  }
}
