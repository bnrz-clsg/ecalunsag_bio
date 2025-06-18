import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    this.text,
    this.title,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
                color: bgColor, fontSize: 12, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: defaultPadding / 2),
          Text(
            text!,
            style: TextStyle(color: bgColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
