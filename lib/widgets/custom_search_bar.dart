import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final EdgeInsets padding;

  const CustomSearchBar({
    Key? key,
    required this.hintText,
    this.padding = const EdgeInsets.all(18),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.pink.shade400,
          ),
          border: const OutlineInputBorder(),
          contentPadding: authInputFieldsContentPadding,
          hintText: hintText,
        ),
      ),
    );
  }
}
