import 'package:flutter/material.dart';
import '../widgets/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.87,
          label: "Visual Lansa",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: "HTML, CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "VS Code",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "Workbench",
        ),
      ],
    );
  }
}
