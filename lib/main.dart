import 'package:flutter/material.dart';
import 'package:foodie/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie",
      theme: ThemeData(
        primaryColor: Colors.grey[400],
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.purple[700],
            shape: const StadiumBorder(),
            minimumSize: const Size(double.infinity, 56),
            maximumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.purple[700],
          prefixIconColor: Colors.grey[400],
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
