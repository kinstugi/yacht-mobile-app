import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarForSignUpPage extends StatelessWidget {
  final Widget trailing;
  const CustomAppBarForSignUpPage({
    Key? key,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.pink.shade400,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        trailing
      ],
    );
  }
}
