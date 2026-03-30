import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  final int currentIndex;
  final PageController controller;
  final VoidCallback onFinish;

  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
    required this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    bool isLast = currentIndex == 2;

    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          if (isLast) {
            onFinish();
          } else {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }
        },
        child: Text(isLast ? "Get Started" : "Next"),
      ),
    );
  }
}
