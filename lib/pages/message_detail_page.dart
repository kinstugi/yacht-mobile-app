import 'package:flutter/material.dart';
import 'package:yachtmob/pages/messages_tab/booking_detail_tab.dart';
import 'package:yachtmob/pages/messages_tab/chat_tab.dart';

import 'package:yachtmob/widgets/custom_switch_btn_widget.dart';

class MessageDetailPage extends StatefulWidget {
  static const String tag = '/message-details';
  const MessageDetailPage({Key? key}) : super(key: key);

  @override
  State<MessageDetailPage> createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
  bool _showChats = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _buildAppBar(),
              const Divider(thickness: 1.1),
              Expanded(
                child: Stack(
                  children: [
                    BookingDetailTab(isPageShowing: !_showChats),
                    ChatTab(isPageShowing: _showChats),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://bit.ly/3fn0GMQ'),
              ),
              const SizedBox(width: 8),
              const Text(
                'Mr Lucy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Flexible(child: Container()),
              CustomSwitchButtonWidget(
                onTap: () {
                  setState(() {
                    _showChats = !_showChats;
                  });
                },
              )
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'WAITING FOR APPROVAL',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
