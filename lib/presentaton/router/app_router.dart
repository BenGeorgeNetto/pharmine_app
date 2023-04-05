import 'package:flutter/material.dart';
import 'package:pharmine_app/presentaton/screens/appointments_screen.dart';
import 'package:pharmine_app/presentaton/screens/cart.dart';
import 'package:pharmine_app/presentaton/screens/medications_screen.dart';
import 'package:pharmine_app/presentaton/screens/home_screen.dart';
import 'package:pharmine_app/presentaton/screens/orders_screen.dart';
import 'package:pharmine_app/presentaton/screens/payment_options_screen.dart';
import 'package:pharmine_app/presentaton/screens/profile_screen.dart';
import 'package:pharmine_app/presentaton/screens/settings_screen.dart';

import '../screens/medicine_details.dart';

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
              //some custom code
              return const MedicineInfoScreen();
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