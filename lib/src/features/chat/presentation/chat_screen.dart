import 'package:flutter/material.dart';
import 'package:simple_project_structure/src/features/chat/domain/chat_message.dart';
import 'package:simple_project_structure/src/features/chat/presentation/chat_message_card.dart';
import 'package:simple_project_structure/src/features/overview/domain/user.dart';

class ChatScreen extends StatelessWidget {
  final List<ChatMessage> messages;
  final User loggedInUser;
  const ChatScreen(
      {super.key, required this.messages, required this.loggedInUser});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final currentChatMessage = messages[index];
              return Row(
                mainAxisAlignment:
                    currentChatMessage.sender == loggedInUser.name
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: ChatMessageCard(message: currentChatMessage),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
