import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_in_flutter/core/theme/cubit/theme_cubit.dart';

class ToggleThemeScreen extends StatelessWidget {
  const ToggleThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theming App')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'This is a sample text to demonstrate theming in Flutter.',
            ),
            const SizedBox(height: 20),

            ElevatedButton(onPressed: () {}, child: const Text('Enalble BTN')),
            const SizedBox(height: 20),

            const ElevatedButton(onPressed: null, child: Text('Disable BTN')),
            const SizedBox(height: 20),

            const TextField(decoration: InputDecoration(labelText: 'enter')),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                
                context.read<ThemeCubit>().toggleTheme(
                  Theme.of(context).brightness == Brightness.dark,
                );
              },
              child: const Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
