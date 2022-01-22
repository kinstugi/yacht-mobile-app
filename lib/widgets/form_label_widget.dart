import 'package:flutter/material.dart';

class FormLabelWidget extends StatelessWidget {
  final bool onTop;
  final String label;
  final double fontSize;
  final Color color;

  const FormLabelWidget({
    Key? key,
    required this.label,
    this.onTop = true,
    this.fontSize = 16,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onTop
        ? SizedBox(
            width: double.infinity,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
                color: color,
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.blue),
              ),
              const Icon(
                Icons.info,
                size: 12,
                color: Colors.blue,
              )
            ],
          );
  }
}
