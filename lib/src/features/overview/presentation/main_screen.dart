import 'package:flutter/material.dart';
import 'package:simple_project_structure/src/features/chat/domain/chat_message.dart';
import 'package:simple_project_structure/src/features/chat/presentation/chat_screen.dart';
import 'package:simple_project_structure/src/features/overview/domain/user.dart';
import 'package:simple_project_structure/src/features/settings/presentation/settings_screen.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Übersicht'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatScreen(
                            loggedInUser: _generateSampleUser(),
                            messages: _generateSampleMessages(),
                          )),
                );
              },
              child: const Text('Zum Chat'),
            ),
            const SizedBox(
              height: 64,
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingsScreen(
                              user: _generateSampleUser(),
                              themeMode: _generateSampleThemeMode(),
                            )));
              },
            ),
          ],
        )),
      ),
    );
  }

  // Beispiel-Daten, normalerweise von einem Repository (Database, API, SharedPreferences, etc.)
  List<ChatMessage> _generateSampleMessages() {
    return [
      const ChatMessage(text: 'Hallo!', sender: 'Alice', receiver: 'Bob'),
      const ChatMessage(text: 'Hallo!', sender: 'Bob', receiver: 'Alice'),
      const ChatMessage(
          text: 'Wie geht es dir?', sender: 'Alice', receiver: 'Bob'),
      const ChatMessage(text: 'Gut, danke!', sender: 'Bob', receiver: 'Alice'),
    ];
  }

  User _generateSampleUser() {
    return User(
      name: 'Alice',
      email: 'alice@gmail.com',
      photoUrl: 'https://randomuser.me/api/portraits/women/0.jpg',
    );
  }

  ThemeMode _generateSampleThemeMode() {
    return ThemeMode.light;
  }
}
