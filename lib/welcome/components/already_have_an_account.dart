import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccount({
    super.key,
    required this.press,
    this.login = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an account?" : "Already have an account?",
          style: TextStyle(color: Colors.grey[400]),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Sign up" : "Sign in",
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
