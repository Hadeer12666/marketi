import 'package:go_router/go_router.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/view/login_screen.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/view/signup_screen.dart';
import 'package:marketi_e_commerce_app/features/home%20Screen/home_screen.dart';
import 'package:marketi_e_commerce_app/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:marketi_e_commerce_app/features/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',

  routes: [
    GoRoute(path: '/splash', builder: (context, state) => SplashScreen()),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => SignupScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
  ],
);
