import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPage extends StatelessWidget {
  const CustomSmoothPage({required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ScrollingDotsEffect(
        activeDotColor: AppColors.darkBlue,
        dotColor: AppColors.babyBlue,
      ),
    );
  }
}
