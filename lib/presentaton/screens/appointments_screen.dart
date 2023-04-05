import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Appointments',
      ),
      body: Center(
        child: Text('Appointments'),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}