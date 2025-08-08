import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupTopImage extends StatelessWidget {
  const SignupTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Spacer(),
            Container(
              height: 300,
              width: 300,
              child: SvgPicture.asset("assets/icons/Eating.svg"),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
