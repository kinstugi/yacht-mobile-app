import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/widgets/chat_bubble_widget.dart';

class ChatTab extends StatelessWidget {
  final bool isPageShowing;
  const ChatTab({
    Key? key,
    required this.isPageShowing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: Matrix4.translationValues(
        isPageShowing ? 0 : -1 * width,
        0,
        0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: _buildChat()),
          const Divider(thickness: 1.2),
          _buildMessageInputWidget()
        ],
      ),
    );
  }

  Widget _buildChat() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          ChatBubbleWidget(
            text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
          ),
          ChatBubbleWidget(
            text: 'harum quisquam eius sed odit fugiat iusto fuga praesentium'
                'optio, eaque rerum! Provident ',
            isMe: false,
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInputWidget() {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: authInputFieldsContentPadding.copyWith(
                    left: 20,
                    bottom: 5,
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.all(0),
              icon: const Icon(
                Icons.send,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
