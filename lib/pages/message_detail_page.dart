import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/widgets/custom_switch_btn_widget.dart';

class MessageDetailPage extends StatelessWidget {
  static const String tag = '/message-details';
  const MessageDetailPage({Key? key}) : super(key: key);

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
              Expanded(child: _buildChat()),
              const Divider(thickness: 1.1),
              _buildMessageInputWidget(),
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
              const CustomSwitchButtonWidget()
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

  Widget _buildChat() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [],
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
