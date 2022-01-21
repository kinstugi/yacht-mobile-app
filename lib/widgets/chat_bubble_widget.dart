import 'package:flutter/material.dart';

class ChatBubbleWidget extends StatelessWidget {
  final bool isMe;
  final String text;

  const ChatBubbleWidget({
    Key? key,
    required this.text,
    this.isMe = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: size.width * 0.6,
                minWidth: size.width * 0.1,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: isMe ? Colors.pink : Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(text),
            ),
          ],
        ),
      ],
    );
  }
}
