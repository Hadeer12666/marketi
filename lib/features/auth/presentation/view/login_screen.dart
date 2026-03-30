import 'package:marketi_e_commerce_app/core/widgets/custom_button.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/widgets/custom_nav_bar.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/widgets/new_member.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/widgets/remember_forget_row.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 58),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CustomNavBar(onTap: () {}, text: 'Skip'),
          ),
          SizedBox(height: 22),
          Image.asset(
            "assets/images/splash/Logo_Splash_Screen.png",
            height: 232,
            width: 272,
          ),
          const SizedBox(height: 32),
          const CustomTextField(hint: "Username or Email", icon: Icons.email),

          const SizedBox(height: 14),

          const CustomTextField(
            hint: "Password",
            icon: Icons.lock,
            isPassword: true,
          ),
          const SizedBox(height: 6),
          RememberForgotRow(
            value: rememberMe,
            onChanged: (val) {
              setState(() {
                rememberMe = val ?? false;
              });
            },
            onForgotPressed: () {
              print("Go to forgot password screen");
            },
          ),
          const SizedBox(height: 20),
          CustomButton(text: "login", onPressd: () {}),
          SizedBox(height: 14),
          NewMember(),
        ],
      ),
    );
  }
}
