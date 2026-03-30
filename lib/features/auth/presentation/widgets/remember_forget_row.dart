import 'package:flutter/material.dart';

class RememberForgotRow extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final VoidCallback onForgotPressed;

  const RememberForgotRow({
    super.key,
    required this.value,
    required this.onChanged,
    required this.onForgotPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(width: 22),
            Transform.scale(
              scale: 1,
              child: Checkbox(value: value, onChanged: onChanged),
            ),
            const Text(
              "Remember Me",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff51526C),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        GestureDetector(
          onTap: onForgotPressed,
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
