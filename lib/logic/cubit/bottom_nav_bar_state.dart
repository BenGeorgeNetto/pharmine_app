part of 'bottom_nav_bar_cubit.dart';

class BottomNavBarState {
  final int currentIndex;
  final Map<int, Color> colors;

  BottomNavBarState({this.currentIndex = 0, Map<int, Color>? colors})
      : colors = colors ?? {
    0: pastelBlue,
    1: darkGrey,
    2: darkGrey,
    3: darkGrey,
  };

  BottomNavBarState copyWith({int? currentIndex, Map<int, Color>? colors}) {
    return BottomNavBarState(
      currentIndex: currentIndex ?? this.currentIndex,
      colors: colors ?? this.colors,
    );
  }
}

abstract class BottomNavBarEvent {}

class TapBottomNavBarEvent extends BottomNavBarEvent {
  final int index;

  TapBottomNavBarEvent(this.index);
}
