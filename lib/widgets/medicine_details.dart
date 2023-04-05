import 'package:flutter/material.dart';
import 'package:pharmine_app/models/medicine_model.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';

class MedicineDetails extends StatelessWidget {
  final Medicine medicine;

  const MedicineDetails({
    Key? key,
    required this.medicine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Medicine Details',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    medicine.medicineImagePath,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          medicine.medicineName,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              ),
                        ),
                        Text(
                          '${medicine.type} | ${medicine.quantity}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          'Rs. ${medicine.medicinePrice}',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Use: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              softWrap: true,
                            ),
                            const SizedBox(width: 8.0),
                            Flexible(
                              child: Text(
                                medicine.use,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dosage: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              softWrap: true,
                            ),
                            const SizedBox(width: 8.0),
                            Flexible(
                              child: Text(
                                medicine.dosage,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF7F80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 32.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.shopping_cart),
                    SizedBox(width: 8.0),
                    Text('Add to Cart'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// For testing pass this button where needed

// MaterialButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => const MedicineDetails(
// medicineName: 'Ibuprofen',
// medicineId: '69',
// type: 'Tablet',
// medicinePrice: '130',
// medicineImagePath: 'lib/assets/images/ibuprofen.png',
// quantity: '500 pieces',
// use: 'Reduce fever and to relieve minor aches and pain',
// dosage: 'As prescribed by your doctor',
// ),
// ),
// );
// },
// child: const Text('See Medicine Details'),
// ),