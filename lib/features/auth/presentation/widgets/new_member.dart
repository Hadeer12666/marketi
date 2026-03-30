import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewMember extends StatelessWidget {
  const NewMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Are you new in Marketi  ", style: TextStyle(fontSize: 14)),

        GestureDetector(
          onTap: () {
            context.go('/signup');
          },
          child: const Text(
            "register?",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
