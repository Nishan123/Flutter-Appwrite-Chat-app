import 'package:appwrite_chat_app/const/chat_message.dart';
import 'package:appwrite_chat_app/const/colors.dart';
import 'package:appwrite_chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController = TextEditingController();
  List message = [
    Message(
        message: "Hi",
        sender: "101",
        reciver: "102",
        timeStamp: DateTime(1000),
        isSeenByReciver: true),
    Message(
        message: "Hello",
        sender: "102",
        reciver: "101",
        timeStamp: DateTime(1000),
        isSeenByReciver: false),
    Message(
        message:
            "How are you skdjbfksa fkasdj fkasdj fkasd fksajd fksaj dfk sdkajfkasd  jasdkf jasd j fkasdj ",
        sender: "101",
        reciver: "102",
        timeStamp: DateTime(1000),
        isSeenByReciver: true),
    Message(
        message:
            "How are you skdjbfksa fkasdj fkasdj fkasd fksajd fksaj dfk sdkajfkasd  jasdkf jasd j fkasdj ",
        sender: "102",
        reciver: "101",
        timeStamp: DateTime(1000),
        isImage: true,
        isSeenByReciver: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Last seen: ",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatMessage(
                    msg: message[index], currentUser: "102", isImage: true);
              },
              itemCount: message.length,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black12
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    controller: messageController,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      hintText: "Type a Message....",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.image)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}
