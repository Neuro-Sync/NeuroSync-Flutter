import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String? action;

  Message(
    this.action,
  );

  factory Message.fromJson(json) {
    return Message(
      json['action'],
    );
  }
}
