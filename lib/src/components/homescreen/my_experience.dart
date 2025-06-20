import 'package:ecalunsag_bio/src/components/widgets/experience_container.dart';
import 'package:ecalunsag_bio/src/components/widgets/title_with_bg.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/demo_my_experience.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithBg(text: "Experience"),
          // Text(
          //   "Experience",
          //   style: Theme.of(context)
          //       .textTheme
          //       .titleLarge
          //       ?.copyWith(color: darkColor),
          // ),
          SizedBox(height: defaultPadding),
          // Expanded makes the list take remaining space and be scrollable
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoMyExperiences.length,
            itemBuilder: (context, index) {
              final experience = demoMyExperiences[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding / 3),
                child: ExperienceContainer(experience: experience),
              );
            },
          ),
        ],
      ),
    );
  }
}
