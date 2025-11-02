import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/core/extensions/theme_extension.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';
import 'package:testing_in_flutter/core/theme/cubit/theme_cubit.dart';

class IconForToggleMode extends StatelessWidget {
  const IconForToggleMode({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<ThemeCubit>().toggleTheme(
          Theme.of(context).brightness == Brightness.dark,
        );
      },
      icon: Icon(
        context.isDarkMode ? Icons.dark_mode : Icons.light_mode,
        color: AppColors.mainColor,
        size: 35.w,
      ),
    );
  }
}
