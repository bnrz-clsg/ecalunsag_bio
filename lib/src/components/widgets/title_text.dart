import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(color: primaryColor, fontSize: 13),
    );
  }
}
