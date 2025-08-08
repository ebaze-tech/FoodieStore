import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "LOGIN",
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
              child: SvgPicture.asset("assets/icons/delivery.svg"),
            ),
            Spacer(),
            SizedBox(height: 32.0),
          ],
        ),
      ],
    );
  }
}
