import 'package:flutter/material.dart';

import '../../constant.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: bgColor,
                    fontSize: 12,
                  ),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.5),
                bottomRight: Radius.circular(12.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
