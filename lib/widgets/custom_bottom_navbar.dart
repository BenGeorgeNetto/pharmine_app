import 'package:flutter/material.dart';
import 'package:pharmine_app/logic/cubit/bottom_nav_bar_cubit.dart';
import 'package:pharmine_app/theme/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return BottomAppBar(
          height: widget.preferredSize.height,
          color: pastelPink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  BlocProvider.of<BottomNavBarCubit>(context).tapIcon(0);
                  Navigator.pushReplacementNamed(context, '/');
                },
                icon: Icon(
                  Icons.home,
                  color: state.colors[0],
                ),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<BottomNavBarCubit>(context).tapIcon(1);
                  Navigator.pushReplacementNamed(context, '/medications');
                },
                icon: Icon(
                  Icons.medication_rounded,
                  color: state.colors[1],
                ),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<BottomNavBarCubit>(context).tapIcon(2);
                  Navigator.of(context).pushReplacementNamed('/orders');
                },
                icon: Icon(
                  Icons.list_alt,
                  color: state.colors[2],
                ),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<BottomNavBarCubit>(context).tapIcon(3);
                  Navigator.pushReplacementNamed(context, '/settings');
                },
                icon: Icon(
                  Icons.settings,
                  color: state.colors[3],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
