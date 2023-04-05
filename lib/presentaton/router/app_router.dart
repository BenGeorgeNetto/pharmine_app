import 'package:flutter/material.dart';
import 'package:pharmine_app/assets/medicines_dummy.dart';
import 'package:pharmine_app/presentaton/screens/appointments_screen.dart';
import 'package:pharmine_app/presentaton/screens/cart.dart';
import 'package:pharmine_app/presentaton/screens/medications_screen.dart';
import 'package:pharmine_app/presentaton/screens/home_screen.dart';
import 'package:pharmine_app/presentaton/screens/orders_screen.dart';
import 'package:pharmine_app/presentaton/screens/payment_options_screen.dart';
import 'package:pharmine_app/presentaton/screens/profile_screen.dart';
import 'package:pharmine_app/presentaton/screens/settings_screen.dart';
import 'package:pharmine_app/widgets/medicine_details.dart';

import '../../models/medicine_model.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
        case '/orders':
        return MaterialPageRoute(
          builder: (_) => const OrdersScreen(),
        );
        case '/appointments':
        return MaterialPageRoute(
          builder: (_) => const AppointmentsScreen(),
        );
        case '/payment_options':
        return MaterialPageRoute(
          builder: (_) => const PaymentOptions(),
        );
        case '/medications':
        return MaterialPageRoute(
          builder: (_) => const MedicinesScreen(),
        );
      case '/medication/info':
        return MaterialPageRoute(
            builder: (BuildContext context) {
              final args = settings.arguments as Map<String, String>;
              final medicineInfo = medicines_dummy_list[args['name']] ?? {};
              return MedicineDetails(medicine: Medicine(
                medicineName: args['name']!,
                medicinePrice: medicineInfo['medicine_price']!.toString(),
                use: medicineInfo['use'].toString(),
                medicineImagePath: medicineInfo['medicine_image_path'].toString(),
                medicineId: medicineInfo['medicine_id'].toString(),
                type: medicineInfo['type'].toString(),
                quantity: medicineInfo['quantity'].toString(),
                dosage: medicineInfo['dosage'].toString(),
              ));
            },
            settings: settings
        );
        case '/settings/payment_options':
        return MaterialPageRoute(
          builder: (_) => const PaymentOptions(),
        );
        case '/orders/cart':
          return MaterialPageRoute(
          builder: (_) => const Cart()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}