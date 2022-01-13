import 'package:flutter/material.dart';

class TrailingWidgetForSignUpPage extends StatelessWidget {
  final int pageNumber;
  const TrailingWidgetForSignUpPage({Key? key, this.pageNumber = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Text(
        'Step $pageNumber/5',
        style: Theme.of(context).textTheme.headline6?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
