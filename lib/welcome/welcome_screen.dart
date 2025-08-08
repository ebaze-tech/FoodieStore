import 'package:flutter/material.dart';
import 'package:foodie/components/background.dart';
import 'package:foodie/welcome/components/login_signup_button.dart';
import 'package:foodie/welcome/components/welcome_image.dart';

import '../responsive.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Responsive(
          desktop: buildWideLayout(context),
          tablet: buildWideLayout(context),
          mobile: buildMobileLayout(context),
        ),
      ),
    );
  }

  /// Desktop and tablet layout: horizontal (Row)
  Widget buildWideLayout(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          const Expanded(child: WelcomeImage()),
          Expanded(
            child: Center(child: SizedBox(width: 450, child: LoginSignupBtn())),
          ),
        ],
      ),
    );
  }

  /// Mobile layout: vertical (Column)
  Widget buildMobileLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const WelcomeImage(),
          const SizedBox(height: 24),
          SizedBox(width: 300, child: LoginSignupBtn()),
        ],
      ),
    );
  }
}
