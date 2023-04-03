import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Settings',
      ),
      body: Center(
        child: Text('Settings'),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
