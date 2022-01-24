import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_bar.dart';

class CustomSearchAndFilterAppBar extends StatelessWidget {
  final VoidCallback onSearchbarTap;
  const CustomSearchAndFilterAppBar({
    Key? key,
    required this.onSearchbarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCustomAppbar(context);
  }

  _buildCustomAppbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomSearchBar(
                  padding: const EdgeInsets.all(0),
                  hintText: 'Where do you want to sail',
                  onTap: onSearchbarTap,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.calendar_today, color: Colors.pink),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildIconButton(
                icon: FontAwesomeIcons.filter,
                label: 'Filter',
                onTap: () {},
              ),
              const SizedBox(width: 18),
              _buildIconButton(
                icon: FontAwesomeIcons.sortAmountUp,
                label: 'Sort',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return _buildSortingBottomSheet();
                    },
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSortingBottomSheet() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Card(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Best seller',
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {},
                  selected: true,
                ),
                ListTile(
                  title: const Text(
                    'Most Rated',
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Most favorite',
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _buildIconButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.pink),
              const SizedBox(width: 10),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
