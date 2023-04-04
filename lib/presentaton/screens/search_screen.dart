import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pharmine_app/widgets/custom_appbar.dart';
import 'package:pharmine_app/widgets/custom_bottom_navbar.dart';

import "package:pharmine_app/assets/medicines_dummy.dart";

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
    if (suggestions.isEmpty) {
      _suggestionsStream.add(["No Results."]);
    } else {
      _suggestionsStream.add(suggestions);
    }
  }

  List<String> _getSuggestions(String query) {
    final suggestions = medicines_dummy_list.keys.toList();
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