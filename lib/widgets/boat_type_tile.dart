import 'package:flutter/material.dart';

class BoatTypeTileWidget extends StatelessWidget {
  final String title;
  final String imageUrl;

  const BoatTypeTileWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            width: 130,
            height: 130,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 3),
        Text(title),
      ],
    );
  }
}
