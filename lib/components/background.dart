import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String topImage, bottomImage;
  const Background({
    super.key,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/main_bottom.png",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // body: SizedBox(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(topImage, width: 120),
            ), // Bottom background image
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(bottomImage, width: 120),
            ),
            // Child widget (WelcomeScreen content)
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [child],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
