import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

final medicines = {
  "Aspirin": {
    "cost": 30,
    "image": "https://www.drugs.com/images/pills/fio/A30.jpg",
    "use": "Aspirin is a salicylate drug used to reduce pain, fever or inflammation. It is commonly used to treat headaches, muscle aches, arthritis, toothaches, and menstrual cramps.",
    "quantity": "10 strips",
    "type": "tablet",
    "dosage": "1 tablet every 4-6 hours"
  },
  "Ibuprofen": {
    "cost": 45,
    "image": "https://www.drugs.com/images/pills/fio/ADVIL_CAPLET.jpg",
    "use": "Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID) used to relieve pain, fever, and inflammation. It is commonly used to treat headaches, menstrual cramps, arthritis, toothaches, and back pain.",
    "quantity": "15 strips",
    "type": "tablet",
    "dosage": "1-2 tablets every 4-6 hours"
  },
  "Acetaminophen": {
    "cost": 25,
    "image": "https://www.drugs.com/images/pills/fio/TYLENOL_500_CAPLET.jpg",
    "use": "Acetaminophen is a pain reliever and fever reducer. It is commonly used to treat mild to moderate pain, such as headaches, muscle aches, menstrual cramps, and toothaches.",
    "quantity": "12 strips",
    "type": "tablet",
    "dosage": "1-2 tablets every 4-6 hours"
  },
  "Amoxicillin": {
    "cost": 50,
    "image": "https://www.drugs.com/images/pills/fio/AMOXIL_250_GLAXO.jpg",
    "use": "Amoxicillin is an antibiotic used to treat a variety of bacterial infections, including pneumonia, bronchitis, ear infections, and urinary tract infections.",
    "quantity": "20 capsules",
    "type": "capsule",
    "dosage": "250-500mg every 8 hours"
  },
  "Levofloxacin": {
    "cost": 70,
    "image": "https://www.drugs.com/images/pills/fio/LEVAQUIN_500.jpg",
    "use": "Levofloxacin is an antibiotic used to treat a variety of bacterial infections, including pneumonia, bronchitis, sinusitis, and urinary tract infections.",
    "quantity": "10 tablets",
    "type": "tablet",
    "dosage": "500mg once daily"
  },
  "Omeprazole": {
    "cost": 40,
    "image": "https://www.drugs.com/images/pills/fio/LOSEC.jpg",
    "use": "Omeprazole is a proton pump inhibitor used to reduce stomach acid production. It is commonly used to treat gastroesophageal reflux disease (GERD), peptic ulcer disease, and Zollinger-Ellison syndrome.",
    "quantity": "14 capsules",
    "type": "capsule",
    "dosage": "20mg once daily"
  }
};

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  final _searchController = TextEditingController();
  final _suggestionsStream = StreamController<List<String>>();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchTextChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _suggestionsStream.close();
    super.dispose();
  }

  void _onSearchTextChanged() {
    final query = _searchController.text;
    if (query.isEmpty) {
      _suggestionsStream.add([]);
      return;
    }
    final suggestions = _getSuggestions(query);
    _suggestionsStream.add(suggestions);
  }

  List<String> _getSuggestions(String query) {
    final suggestions = medicines.keys.toList();
    print(suggestions);
    return suggestions.where((suggestion) => suggestion.toLowerCase().startsWith(query.toLowerCase())).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Search',
      ),
      body: Column(children: [
        TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Search...',
          ),
        ),
        StreamBuilder<List<String>>(
          stream: _suggestionsStream.stream,
          builder: (context, snapshot) {
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return SizedBox.shrink();
            }
            final suggestions = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: suggestions.length,
              itemBuilder: (context, index) {
                final suggestion = suggestions[index];
                return ListTile(
                  title: Text(suggestion),
                  onTap: () {
                    _searchController.text = suggestion;
                    _suggestionsStream.add([]);
                    // Do something with the selected suggestion.
                  },
                );
              },
            );
          },
        ),
      ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}