import 'package:flutter/material.dart';

class SocialMediaAuthButton extends StatelessWidget {
  final String btnText;
  final Icon icon;
  final VoidCallback onPressed;

  const SocialMediaAuthButton({
    Key? key,
    required this.btnText,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Expanded(
            child: Text(
              btnText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
