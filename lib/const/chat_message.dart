import 'package:appwrite_chat_app/const/colors.dart';
import 'package:appwrite_chat_app/const/format_date.dart';
import 'package:appwrite_chat_app/models/message.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatefulWidget {
  final Message msg;
  final String currentUser;
  final bool isImage;
  const ChatMessage(
      {super.key,
      required this.msg,
      required this.currentUser,
      required this.isImage});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  @override
  Widget build(BuildContext context) {
    return widget.isImage
        ? Row(
            mainAxisAlignment: widget.msg.sender == widget.currentUser
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: widget.msg.sender == widget.currentUser
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: "https://picsum.photos/200",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Text(
                          formatDate(widget.msg.timeStamp),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 10),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        widget.msg.sender == widget.currentUser
                            ? widget.msg.isSeenByReciver
                                ? Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                : Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Colors.black38,
                                    size: 16,
                                  )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: widget.msg.sender == widget.currentUser
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: widget.msg.sender == widget.currentUser
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          padding: const EdgeInsets.all(8),
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.70),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft:
                                    widget.msg.sender != widget.currentUser
                                        ? const Radius.circular(0)
                                        : const Radius.circular(16),
                                bottomRight:
                                    widget.msg.sender == widget.currentUser
                                        ? const Radius.circular(0)
                                        : const Radius.circular(16),
                                topLeft: const Radius.circular(16),
                                topRight: const Radius.circular(16),
                              ),
                              color: widget.msg.sender == widget.currentUser
                                  ? primaryColor
                                  : Colors.lightBlue),
                          child: Column(
                            crossAxisAlignment:
                                widget.msg.sender == widget.currentUser
                                    ? CrossAxisAlignment.end
                                    : CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.msg.message,
                                style: const TextStyle(color: Colors.white),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    widget.msg.sender == widget.currentUser
                                        ? MainAxisAlignment.end
                                        : MainAxisAlignment.start,
                                children: [
                                  Text(
                                    formatDate(widget.msg.timeStamp),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  widget.msg.sender == widget.currentUser
                                      ? widget.msg.isSeenByReciver
                                          ? Icon(
                                              Icons
                                                  .check_circle_outline_outlined,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          : Icon(
                                              Icons
                                                  .check_circle_outline_outlined,
                                              color: Colors.black38,
                                              size: 16,
                                            )
                                      : const SizedBox()
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              )
            ],
          );
  }
}
