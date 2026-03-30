import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/utils/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 55,
          height: 44,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.green),
          ),
          child: const Text(
            "Skip",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
