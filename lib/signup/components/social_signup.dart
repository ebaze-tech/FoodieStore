import 'package:flutter/cupertino.dart';
import 'package:foodie/signup/components/or_divider.dart';
import 'package:foodie/signup/components/social_icons.dart';

class SocialSignup extends StatelessWidget {
  const SocialSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(iconSrc: "assets/icons/facebook.svg", press: () {}),
            SocialIcon(iconSrc: "assets/icons/twitter.svg", press: () {}),
            SocialIcon(iconSrc: "assets/icons/google-plus.svg", press: () {}),
          ],
        ),
      ],
    );
  }
}
