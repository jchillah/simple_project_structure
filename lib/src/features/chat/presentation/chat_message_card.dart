import 'package:flutter/material.dart';
import 'package:simple_project_structure/src/features/chat/domain/chat_message.dart';

class ChatMessageCard extends StatelessWidget {
  final ChatMessage message;
  const ChatMessageCard({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(message.text),
        subtitle: Text(message.sender),
      ),
    );
  }
}
