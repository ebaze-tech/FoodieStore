import 'package:flutter/material.dart';
import 'package:foodie/components/background.dart';
import 'package:foodie/responsive.dart';
import 'package:foodie/signup/components/signup_form.dart';
import 'package:foodie/signup/components/signup_top_image.dart';
import 'package:foodie/signup/components/social_signup.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileSignUpScreen(),
          tablet: Row(
            children: [
              Expanded(child: SignupTopImage()),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SizedBox(width: 450, child: SignupForm())],
                ),
              ),
            ],
          ),
          desktop: Row(
            children: [
              Expanded(child: SignupTopImage()),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SizedBox(width: 450, child: SignupForm())],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignUpScreen extends StatelessWidget {
  const MobileSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignupTopImage(),
        Row(
          children: [
            Spacer(),
            Expanded(flex: 8, child: SignupForm()),
            Spacer(),
          ],
        ),
        SocialSignup(),
      ],
    );
  }
}
