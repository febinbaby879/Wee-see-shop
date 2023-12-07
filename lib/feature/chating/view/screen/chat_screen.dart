import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/chating/data/model/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController textEditingController = TextEditingController();
  final List<Message> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                  ),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage('asset/images/cart like image2.png'),
                ),
                sizedboxwithWidth(kwidth! * .03),
                const Text(
                  'Chat name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mobile_screen_share_sharp,
                    color: kyellow,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.video_camera_front_sharp,
                    color: kyellow,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.vertical_align_bottom_rounded,
                    color: kyellow,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage(Message message) {
    return Container(
      width: 200,
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      color: !message.isMe ? kgrey : messageRplyBoxColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
          Text(message.dateTime.toString()),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        color: klightGrey,
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: CupertinoTextField(
              style: const TextStyle(color: kwhite),
              controller: textEditingController,
              placeholder: 'Enter your text',
              //placeholderStyle: const TextStyle(color: kwhite),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: klightGrey,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.send,
              color: kyellow,
              size: 29,
            ),
            onPressed: () {
              _sendMessage(textEditingController.text, true);
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text, bool isMe) {
    setState(() {
      _messages.add(
        Message(
          text: text,
          isMe: isMe,
          dateTime: DateTime.now(),
        ),
      );
      textEditingController.clear();
    });
  }
}
