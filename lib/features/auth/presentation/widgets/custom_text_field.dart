import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final String hint;
  final Widget icon;
  final bool isPassword;

  const CustomTextField({
    super.key,
    this.label,
    required this.hint,
    required this.icon,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 8),
        ],

        TextField(
          obscureText: widget.isPassword ? isObscure : false,
          decoration: InputDecoration(
            hintText: widget.hint,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: widget.icon,

            /// 👁️ toggle
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  )
                : null,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
