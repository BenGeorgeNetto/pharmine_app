import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

class Medications extends StatelessWidget {
  const Medications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Medications',
      ),
      body: Center(
        child: Text('Medications'),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
