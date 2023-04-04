import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Settings',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SettingsElementHeading(heading: 'General'),
                SettingsElement(option: 'Emergency Contact'),
                Divider(
                  thickness: 2.0,
                ),
                SettingsElement(option: 'Theme'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SettingsElementHeading(heading: 'Payment Settings'),
                SettingsElement(option: 'Payment Options'),
                Divider(
                  thickness: 2.0,
                ),
                SettingsElement(option: 'Subscription'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SettingsElementHeading(heading: 'Notification Settings'),
                SettingsElement(option: 'Alarm'),
                Divider(
                  thickness: 2.0,
                ),
                SettingsElement(option: 'Notifications'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class SettingsElement extends StatelessWidget {
  final String option;
  const SettingsElement({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        option,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

class SettingsElementHeading extends StatelessWidget {
  final String heading;
  const SettingsElementHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
