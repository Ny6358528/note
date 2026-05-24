  import 'package:go_router/go_router.dart';
import 'package:note_app/core/routing/app_nameing_router.dart';
import 'package:note_app/feature/home/screens/home_screen.dart';
import 'package:note_app/feature/onboarding/screens/on_boarding_screen.dart';

class AppRouter{


// GoRouter configuration
static final router = GoRouter(
  routes: [
    GoRoute(
      path: AppNamingRouter.onboardingScreen,
      builder: (context, state) => OnboardingScreen(),
    ),

     GoRoute(
      path: AppNamingRouter.homeScreen,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
}