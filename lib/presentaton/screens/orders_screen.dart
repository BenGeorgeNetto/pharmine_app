import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Orders',
      ),
      body: Center(
        child: Text('Orders'),
      ),
      bottomNavigationBar: CustomBottomNavBar()
    );
  }
}
