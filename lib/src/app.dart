import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:simple_project_structure/src/features/overview/presentation/main_screen.dart';

// die Wurzel unseres Widgets-Tree
// (besteht aus nur einem MaterialApp-Widget)
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OverviewScreen(),
      theme: FlexThemeData.light(scheme: FlexScheme.greyLaw),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.greyLaw),
      themeMode: ThemeMode.system,
    );
  }
}
