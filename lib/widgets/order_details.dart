import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  final String orderId;
  final String orderStatus;
  final String orderDate;
  final String arrivalDate;
  final String orderTotal;
  final String medicineName;
  final int orderQuantity;
  final String modeOfPayment;

  const OrderDetails({
    super.key,
    required this.orderId,
    required this.orderStatus,
    required this.orderDate,
    required this.arrivalDate,
    required this.orderTotal,
    required this.medicineName,
    required this.orderQuantity,
    required this.modeOfPayment,
  });

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
