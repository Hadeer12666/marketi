// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketi_e_commerce_app/core/utils/app_colors.dart';
import 'package:marketi_e_commerce_app/features/onboarding/data/onboarding_model.dart';
import 'package:marketi_e_commerce_app/features/onboarding/presentation/views/widgets/custom_smooth_page.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({Key? key, required this.controller, this.onPageChanged})
    : super(key: key);
  final onBoardingData = OnBoardingModel.onBoardingData;
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset(onBoardingData[index].image),
              SizedBox(height: 40),
              CustomSmoothPage(controller: controller),
              SizedBox(height: 30),
              Text(
                onBoardingData[index].title,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.darkBlue,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 34),
              SizedBox(
                height: 114,
                width: 250,
                child: Text(
                  onBoardingData[index].subTitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
