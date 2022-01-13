import 'package:flutter/material.dart';

class CustomTitleBarForSignUpPages extends StatelessWidget {
  final String title;
  const CustomTitleBarForSignUpPages({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
