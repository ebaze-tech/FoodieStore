import 'package:flutter/material.dart';
import 'package:foodie/welcome/components/already_have_an_account.dart';
import 'package:foodie/welcome/welcome_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.white,
                onSaved: (email) {},
                decoration: InputDecoration(
                  hintText: "Your Email",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.person),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              // SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  cursorColor: Colors.white,
                  onSaved: (password) {},
                  decoration: InputDecoration(
                    hintText: "Your password",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // const SizedBox(height: 10.0),
              Hero(
                tag: "login_btn",
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomeScreen();
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
              const SizedBox(height: 16.0),
              AlreadyHaveAnAccount(
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return SignupScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
