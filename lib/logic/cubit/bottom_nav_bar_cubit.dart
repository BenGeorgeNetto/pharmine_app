import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pharmine_app/theme/colors.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState());

  void tapIcon(int index) {
    emit(state.copyWith(
        currentIndex: index,
        colors: {
          0: index == 0 ? pastelBlue : darkGrey,
          1: index == 1 ? pastelBlue : darkGrey,
          2: index == 2 ? pastelBlue : darkGrey,
          3: index == 3 ? pastelBlue : darkGrey,
        }));
  }
}
