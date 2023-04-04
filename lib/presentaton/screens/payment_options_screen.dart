import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Payment Options',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            PaymentCard(paymentType: 'Credit Card'),
            PaymentCard(paymentType: 'Debit Card'),
            PaymentCard(paymentType: 'UPI/Wallets'),
            PaymentCard(paymentType: 'Net Banking'),
          ],
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  final String paymentType;

  const PaymentCard({Key? key, required this.paymentType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(paymentType),
          ],
        ),
      ),
    );
  }
}

