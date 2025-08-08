import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;

  const SocialIcon({super.key, this.iconSrc, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Theme.of(context).cardColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc!, width: 20, height: 20),
      ),
    );
  }
}
