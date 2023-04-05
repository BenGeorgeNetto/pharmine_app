import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

import '../../assets/medicines_dummy.dart';



class MedicineInfoScreen extends StatefulWidget {
  const MedicineInfoScreen({Key? key}) : super(key: key);

  @override
  State<MedicineInfoScreen> createState() => _MedicineInfoScreenState();
}

class _MedicineInfoScreenState extends State<MedicineInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final medicineData = medicines_dummy_list[arg['name']!];
    return Scaffold(
      appBar: CustomAppBar(
        title: arg['name']!
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 16.0),
              Image.network(
                medicineData!['medicine_image_path'].toString(),
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "₹${medicineData!["medicine_price"]}",
                style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
              ),
              const Divider(
                thickness: 2.0,
              ),
              Text(
                medicineData!["use"].toString(),
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Roboto'),
              ),
            ],
          ),
        ),
      ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}