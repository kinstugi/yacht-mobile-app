import 'package:flutter/material.dart';

class CustomSwitchButtonWidget extends StatefulWidget {
  const CustomSwitchButtonWidget({Key? key}) : super(key: key);

  @override
  State<CustomSwitchButtonWidget> createState() =>
      _CustomSwitchButtonWidgetState();
}

class _CustomSwitchButtonWidgetState extends State<CustomSwitchButtonWidget> {
  final double widgetWidth = 85;

  final double widgetHeight = 40;

  final double indicatorDiameter = 40;

  bool _showChat = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showChat = !_showChat;
        });
      },
      child: Container(
        height: widgetHeight,
        width: widgetWidth,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(indicatorDiameter / 2),
        ),
        child: Stack(
          children: [
            AnimatedContainer(
              height: indicatorDiameter,
              width: indicatorDiameter,
              duration: const Duration(milliseconds: 200),
              transform: Matrix4.translationValues(
                _showChat ? widgetWidth - indicatorDiameter : 0,
                0,
                0,
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent.withAlpha(80),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                const Icon(Icons.sailing, color: Colors.blue),
                Flexible(child: Container()),
                const Icon(Icons.chat_bubble_outline, color: Colors.blue),
                const SizedBox(width: 6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
