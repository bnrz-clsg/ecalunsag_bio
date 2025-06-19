import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../responsive.dart';

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
              // Utils.launchUrlHelper('mailto:pangmalakasangreview@sirjed.com');
            },
          ),
          const SizedBox(width: 15),
          _SocialIconButton(
            icon: FontAwesomeIcons.behance,
            onPressed: () {
              // Utils.launchUrlHelper('https://www.tiktok.com/@jedcalunsagprc');
            },
          ),
          const SizedBox(width: 15),
          _SocialIconButton(
            icon: FontAwesomeIcons.github,
            onPressed: () {
              // Utils.launchUrlHelper('https://www.facebook.com/100094412479690');
            },
          ),
          const SizedBox(width: 15),
          _SocialIconButton(
            icon: FontAwesomeIcons.xTwitter,
            onPressed: () {
              // Utils.launchUrlHelper('https://x.com/jedcalunsag?lang=en');
            },
          ),
          const SizedBox(width: 15),
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
