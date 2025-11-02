import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/core/di/dependency_injection.dart';
import 'package:testing_in_flutter/core/routing/app_router.dart';
import 'package:testing_in_flutter/core/routing/routes.dart';
import 'package:testing_in_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:testing_in_flutter/core/theme/theme_modes/dark_mode.dart';
import 'package:testing_in_flutter/core/theme/theme_modes/light_mode.dart';
import 'package:testing_in_flutter/features/home/logic/cubit/home_cubit.dart';

class AppThemeing extends StatelessWidget {
  const AppThemeing({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(create: (context) => getIt<HomeCubit>()),
        ],

        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, newMode) {
            print('the mode is $newMode');
            return MaterialApp(
              title: 'Theme App',
              debugShowCheckedModeBanner: false,
              theme: getLightModeTheme(),
              darkTheme: getDarkModeTheme(),
              themeMode: newMode,
              // home: const ToggleThemeScreen(),
              initialRoute: Routes.homeScreen,

              onGenerateRoute: AppRouter().generateRoute,
            );
          },
        ),
      ),
    );
  }
}
