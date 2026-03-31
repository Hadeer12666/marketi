import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_e_commerce_app/core/services/get_it.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/view/login_screen_view.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/view/signup_screen_view.dart';
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
    GoRoute(
      path: '/login',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: LoginScreen(),
      ),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: SignupScreen(),
      ),
    ),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
  ],
);
