import 'package:flutter/material.dart';
import 'package:testing_in_flutter/core/theme/theme_modes/dark_mode.dart';
import 'package:testing_in_flutter/core/theme/theme_modes/light_mode.dart';
import 'package:testing_in_flutter/features/toggle_theme/toggle_theme_screen.dart';

class AppThemeing extends StatelessWidget {
  const AppThemeing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme App',
      debugShowCheckedModeBanner: false,
      theme: getDarkModeTheme(),
      themeMode: ThemeMode.dark,
      home: const ToggleThemeScreen(),
    );
  }
}
