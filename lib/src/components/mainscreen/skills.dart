import 'package:ecalunsag_bio/src/components/mainscreen/coding.dart';
import 'package:ecalunsag_bio/src/components/mainscreen/funtional_skills.dart';
import 'package:ecalunsag_bio/src/components/widgets/title_text.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import '../widgets/animated_circular_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: TitleText(text: "SKILLS"),
          ),
          Row(
            children: [
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.8,
                  label: "Flutter",
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.70,
                  label: "Firebase",
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.70,
                  label: "MySql",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: Coding(),
          ),
          FuntionalSkills()
        ],
      ),
    );
  }
}
