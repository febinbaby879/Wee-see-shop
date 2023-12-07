// ignore_for_file: public_member_api_docs, sort_constructors_first
class Message {
  final String text;
  final bool isMe;
  DateTime dateTime;
  Message({
    required this.dateTime,
    required this.text,
    required this.isMe,
  });
}
