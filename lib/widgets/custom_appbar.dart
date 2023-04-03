import 'package:flutter/material.dart';
import 'package:pharmine_app/theme/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actionsIconTheme: IconThemeData(
        color: darkGrey,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          icon: const Icon(Icons.account_circle),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
