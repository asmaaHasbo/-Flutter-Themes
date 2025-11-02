import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_in_flutter/core/di/dependency_injection.dart';
import 'package:testing_in_flutter/core/routing/routes.dart';
import 'package:testing_in_flutter/features/home/logic/cubit/home_cubit.dart';
import 'package:testing_in_flutter/features/home/ui/home_screen.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => GetStartedScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..emitPopularMoviesStates(),
            child: const HomeScreen(),
          ),
        );

      default:
        // Unknown route
        return null;
    }
  }
}
