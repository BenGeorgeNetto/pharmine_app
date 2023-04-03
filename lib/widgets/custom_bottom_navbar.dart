import 'package:flutter/material.dart';
import 'package:pharmine_app/theme/colors.dart';

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
    return BottomAppBar(
      height: widget.preferredSize.height,
      color: pastelPink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/appointments');
            },
            icon: const Icon(Icons.calendar_month),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/orders');
            },
            icon: const Icon(Icons.list_alt),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/settings');
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
