import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';

class MedicineDetails extends StatelessWidget {
  final String medicineName;
  final String medicineId;
  final String type;
  final String quantity;
  final String medicinePrice;
  final String medicineImagePath;
  final String use;
  final String dosage;

  const MedicineDetails({
    Key? key,
    required this.medicineName,
    required this.medicineId,
    required this.type,
    required this.medicinePrice,
    required this.medicineImagePath,
    required this.quantity,
    required this.use,
    required this.dosage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Medicine Details',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  medicineImagePath,
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
                        medicineName,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                      ),
                      Text(
                        '$type | $quantity',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        'Rs. $medicinePrice',
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
                              use,
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
                              dosage,
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