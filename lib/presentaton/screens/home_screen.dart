import 'package:flutter/material.dart';
import 'package:pharmine_app/theme/colors.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Pharmine',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome Back',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            'Rick!',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: darkGrey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              'Refill now!',
                              style: TextStyle(
                                color: cloudWhite,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        'lib/assets/images/hands.png',
                        fit: BoxFit.fitHeight,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'You might be running out of these',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(
                height: 8.0,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: const [
                  MedicineHomeCard(
                    medicineImage:
                        "https://graph.org/file/2d4da81ce43270982abf8.png",
                    medicineName: 'Aspirin',
                    medicinePrice: '30',
                  ),
                  MedicineHomeCard(
                    medicineImage:
                        "https://graph.org/file/08b0dbced515a3b75a23b.png",
                    medicineName: 'Ibuprofen',
                    medicinePrice: '45',
                  ),
                  MedicineHomeCard(
                    medicineImage:
                        "https://graph.org/file/b2ce31961ea0b3dbaad2d.png",
                    medicineName: 'Omeprazole',
                    medicinePrice: '40',
                  ),
                  MedicineHomeCard(
                    medicineImage:
                        "https://graph.org/file/49cd0156f4d1b322dd7fd.png",
                    medicineName: 'Amoxicillin',
                    medicinePrice: '50',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class MedicineHomeCard extends StatelessWidget {
  final String medicineImage;
  final String medicineName;
  final String medicinePrice;

  const MedicineHomeCard({
    Key? key,
    required this.medicineImage,
    required this.medicineName,
    required this.medicinePrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              medicineImage,
              height: 100.0,
              width: 100.0,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(medicineName,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        )),
                Text(
                  'Rs. $medicinePrice',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
