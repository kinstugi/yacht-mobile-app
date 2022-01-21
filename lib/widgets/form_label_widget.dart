import 'package:flutter/material.dart';

class FormLabelWidget extends StatelessWidget {
  final bool onTop;
  final String label;
  final double fontSize;

  const FormLabelWidget(
      {Key? key, required this.label, this.onTop = true, this.fontSize = 16})
      : super(key: key);

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
