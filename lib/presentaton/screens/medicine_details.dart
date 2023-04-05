import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';



class MedicineInfoScreen extends StatefulWidget {
  const MedicineInfoScreen({Key? key}) : super(key: key);

  @override
  State<MedicineInfoScreen> createState() => _MedicineInfoScreenState();
}

class _MedicineInfoScreenState extends State<MedicineInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: CustomAppBar(
        title: arg['name']!
      ),
      body: const Center(
        child: Text('hi'),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}