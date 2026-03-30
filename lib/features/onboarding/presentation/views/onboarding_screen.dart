import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/database/cashe/cashe_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_e_commerce_app/features/onboarding/presentation/views/widgets/get_buttons.dart';
import 'package:marketi_e_commerce_app/features/onboarding/presentation/views/widgets/onboarding_body.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  void _finishOnboarding() async {
    await CacheHelper.setOnBoarding(value: true);
    context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 70),
              OnBoardingBody(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              const SizedBox(height: 10),
              GetButtons(
                currentIndex: currentIndex,
                controller: _controller,
                onFinish: _finishOnboarding,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
