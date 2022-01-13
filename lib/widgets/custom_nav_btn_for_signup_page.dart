import 'package:flutter/material.dart';

class CustomNavBtnForSignUpPages extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool outlined;

  const CustomNavBtnForSignUpPages({
    Key? key,
    required this.onPressed,
    required this.text,
    this.outlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: SizedBox(width: double.infinity),
          flex: 2,
        ),
        Flexible(
          flex: 8,
          child: outlined
              ? OutlinedButton(
                  onPressed: onPressed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: Theme.of(context).textTheme.button,
                      )
                    ],
                  ),
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink.shade400,
                  ),
                  onPressed: onPressed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(text)],
                  ),
                ),
        ),
        const Flexible(
          child: SizedBox(width: double.infinity),
          flex: 2,
        ),
      ],
    );
  }
}
