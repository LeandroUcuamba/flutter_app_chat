import 'package:flutter_app_chat/models/user.dart';

class Message {
  final User? sender;
  final String? text;
  final String? time;

  Message({
    this.sender,
    this.text,
    this.time,
  });
}
