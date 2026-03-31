import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/widgets/custom_button.dart';
import 'package:marketi_e_commerce_app/features/auth/presentation/widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Image.asset(
              "assets/images/splash/Logo_Splash_Screen.png",
              width: 160,
              height: 160,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              hint: "FullName",
              icon: Image.asset("assets/images/Name_Icon.png"),
              label: "Your Name",
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              hint: "Username",
              icon: Icon(Icons.person),
              label: "User Name",
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              hint: "+20 1501142409",
              icon: Image.asset("assets/images/Phone_Icon.png"),
              label: "Phone Number",
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              hint: "You@gmail.com",
              icon: Icon(Icons.email),
              label: "Email",
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              hint: "",
              icon: Image.asset("assets/images/Password_Icon.png"),
              label: "Password",
              isPassword: true,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              hint: "",
              icon: Image.asset("assets/images/Password_Icon.png"),
              label: "Confirm Password",
              isPassword: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 10),
              child: CustomButton(text: "SignUp", onPressd: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
