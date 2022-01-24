import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final EdgeInsets padding;
  final VoidCallback onTap;

  const CustomSearchBar({
    Key? key,
    required this.hintText,
    this.padding = const EdgeInsets.all(18),
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: padding,
        padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.pink,
            ),
            Text(hintText)
          ],
        ),
      ),
    );
  }
}
