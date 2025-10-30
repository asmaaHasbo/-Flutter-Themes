import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_in_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:testing_in_flutter/core/theme/theme_modes/dark_mode.dart';
import 'package:testing_in_flutter/core/theme/theme_modes/light_mode.dart';
import 'package:testing_in_flutter/features/toggle_theme/toggle_theme_screen.dart';

class AppThemeing extends StatelessWidget {
  const AppThemeing({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],

      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, newMode) {
          print('the mode is $newMode');
          return MaterialApp(
            title: 'Theme App',
            debugShowCheckedModeBanner: false,
            theme: getLightModeTheme(),
            darkTheme: getDarkModeTheme(),
            themeMode: newMode ,
            home: const ToggleThemeScreen(),
          );
        },
      ),
    );
  }
}
