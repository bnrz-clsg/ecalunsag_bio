import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

class TitleWithBg extends StatelessWidget {
  const TitleWithBg({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        child: Text(
          text!,
          style: TextStyle(color: bgColor, fontSize: 13),
        ),
      ),
    );
  }
}
