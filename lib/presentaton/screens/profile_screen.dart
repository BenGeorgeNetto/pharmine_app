import 'package:flutter/material.dart';
import 'package:pharmine_app/theme/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32.0),
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage('lib/assets/images/profile_pic.png'),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Rick Astley',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'rickastley@gmail.com',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Age: 69 Years',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Address',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(
                        Icons.edit_outlined,
                        color: darkGrey,
                      )
                    ],
                  ),
                  // TODO: Make address editable using button
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '1234, Main Street, New York, USA',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
