import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.onboardingScreen:
      //   return MaterialPageRoute(builder: (_) => OnboardingScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => GetStartedScreen());

      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => SignUpCubit(getIt()),
      //       child: SignUpScreen(),
      //     ),
      //   );

  
      default:
        // Unknown route
        return null;
    }
  }
}
