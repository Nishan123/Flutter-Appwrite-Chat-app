class Message {
  final String message;
  final String? messageId;
  final String sender;
  final String reciver;
  final DateTime timeStamp;
  final bool isSeenByReciver;
  final bool? isImage;
  Message({
    required this.message,
     this.messageId,
    required this.sender,
    required this.reciver,
    required this.timeStamp,
    required this.isSeenByReciver,
     this.isImage,
  });
}
