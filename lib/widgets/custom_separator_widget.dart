import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  final String text;
  const CustomSeparator({
    Key? key,
    this.text = 'OR',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(child: Divider(thickness: 2)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Expanded(child: Divider(thickness: 2)),
      ],
    );
  }
}
