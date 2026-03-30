import 'dart:async';
import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/database/cashe/cashe_helper.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterSplash();
  }

  void _navigateAfterSplash() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    bool seenOnboarding = CacheHelper.getOnBoarding() ?? false;
    bool loggedIn = CacheHelper.getUserLoggedIn() ?? false;

    if (seenOnboarding) {
      if (loggedIn) {
        context.go('/home'); // GoRouter navigation
      } else {
        context.go('/login');
      }
    } else {
      context.go('/onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/splash/Logo_Splash_Screen.png",
          width: 300,
          height: 256,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
