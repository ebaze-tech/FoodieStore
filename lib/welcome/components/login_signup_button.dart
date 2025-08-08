import 'package:flutter/material.dart';
import 'package:foodie/homepage/homepage.dart';
import 'package:foodie/signup/signup_screen.dart';

class LoginSignupBtn extends StatelessWidget {
  const LoginSignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn ",
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[700],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Homepage();
                  },
                ),
              );
            },
            child: Text(
              "Login".toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Hero(
          tag: "signup_btn",
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[400],
              elevation: 0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ),
              );
            },
            child: Text(
              "Sign Up".toUpperCase(),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
