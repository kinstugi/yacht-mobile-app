import 'package:flutter/material.dart';

class CustomTitleBarForSignUpPages extends StatelessWidget {
  final String title;
  final Color color;
  const CustomTitleBarForSignUpPages({
    Key? key,
    required this.title,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
