import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onPressd});

  final String text;
  final VoidCallback onPressd;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressd,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}
