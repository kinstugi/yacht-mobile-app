import 'package:flutter/material.dart';

class BoatTypeSelectionTile extends StatelessWidget {
  final bool isActive;
  final String label;
  // final VoidCallback onTap;
  const BoatTypeSelectionTile({
    Key? key,
    required this.isActive,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: isActive ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sailing_outlined,
            size: 40,
            color: isActive ? Colors.white : Colors.blue,
          ),
          Text(
            label,
            style: TextStyle(color: isActive ? Colors.white : Colors.blue),
          ),
        ],
      ),
    );
  }
}

class BoatTypeFilterGridWidget extends StatelessWidget {
  final List<String> items;
  const BoatTypeFilterGridWidget({Key? key, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18,
        crossAxisSpacing: 18,
        childAspectRatio: 2,
      ),
      itemBuilder: (ctx, i) => BoatTypeSelectionTile(
        isActive: i == 0,
        label: items[i],
      ),
      itemCount: items.length,
    );
  }
}
