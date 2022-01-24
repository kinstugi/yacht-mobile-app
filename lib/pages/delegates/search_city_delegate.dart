import 'package:flutter/material.dart';

class CitySearch extends SearchDelegate {
  final cities = [
    'Antalya',
    'Naxos',
    'Istanbul',
    'Izmit',
    'Izmir',
    'Cancun',
    'Miami',
  ];

  final recent = [
    'Antalya',
    'Naxos',
    'Istanbul',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.chevron_left),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recent
        : cities.where((city) {
            city = city.toLowerCase();
            query = query.toLowerCase();
            return city.startsWith(query);
          }).toList();

    return buildSuggestedCities(suggestions);
  }

  Widget buildSuggestedCities(List<String> cities) {
    return ListView.builder(
      itemBuilder: (ctx, i) {
        return ListTile(
          leading: const Icon(Icons.location_pin, color: Colors.blue),
          title: Text(cities[i]),
          onTap: () {
            close(ctx, cities[i]);
          },
        );
      },
      itemCount: cities.length,
    );
  }
}
