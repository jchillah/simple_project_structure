import 'package:flutter/material.dart';
import 'package:simple_project_structure/src/features/overview/domain/user.dart';
import 'package:simple_project_structure/src/features/settings/presentation/user_area.dart';

class SettingsScreen extends StatelessWidget {
  final User user;
  final ThemeMode themeMode;
  const SettingsScreen(
      {super.key, required this.user, required this.themeMode});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              UserArea(
                user: user,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Theme Mode: ${themeMode.name}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
