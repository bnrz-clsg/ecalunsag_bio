import 'package:flutter/material.dart';
import '../../constant.dart';

class CustomTexedIcon extends StatelessWidget {
  const CustomTexedIcon({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);

  final String? text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor, // or any color you want
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Center(
                child: Icon(
                  icon!,
                  size: 12.0,
                  color: darkColor, // icon color
                ),
              ),
            ),
          ),
          SizedBox(width: defaultPadding / 2),
          Expanded(
            child: Text(
              text!,
              style: TextStyle(color: bgColor, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
