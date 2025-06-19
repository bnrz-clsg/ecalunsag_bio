import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../responsive.dart';
import '../../utils/utils.dart';

// import '../utils/utils.dart'; // Use FontAwesome icons

class SocialContainer extends StatelessWidget {
  const SocialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _SocialIconButton(
            icon: Icons.email_outlined,
            onPressed: () {
              Utils.launchUrlHelper('mailto:e.calunsag12@gmail.com');
            },
          ),
          const SizedBox(width: 15),
          _SocialIconButton(
            icon: FontAwesomeIcons.linkedinIn,
            onPressed: () {
              Utils.launchUrlHelper(
                  'https://linkedin.com/in/ebenezer-calunsagg-92095924b');
            },
          ),
          const SizedBox(width: 15),
          _SocialIconButton(
            icon: FontAwesomeIcons.behance,
            onPressed: () {
              Utils.launchUrlHelper(
                  'https://www.behance.net/gallery/126844463/LOGO');
            },
          ),
          const SizedBox(width: 15),
          _SocialIconButton(
            icon: FontAwesomeIcons.github,
            onPressed: () {
              Utils.launchUrlHelper('https://github.com/bnrz-clsg');
            },
          ),
        ],
      ),
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _SocialIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double containerSize = !Responsive.isDesktop(context) ? 30 : 35;
    double iconSize = !Responsive.isDesktop(context) ? 15 : 18;
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: containerSize,
        height: containerSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: primaryColor, // or any color you want
            width: 2,
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: Colors.white70, // icon color
          ),
        ),
      ),
    );
  }
}
