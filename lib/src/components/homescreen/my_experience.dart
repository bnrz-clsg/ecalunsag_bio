import 'package:ecalunsag_bio/src/components/widgets/experience_container.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/demo_my_experience.dart';
import '../../responsive.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: Responsive.isDesktop(context) ? false : true,
      physics: Responsive.isDesktop(context)
          ? AlwaysScrollableScrollPhysics()
          : NeverScrollableScrollPhysics(),
      itemCount: demoMyExperiences.length,
      itemBuilder: (context, index) {
        final experience = demoMyExperiences[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 3),
          child: ExperienceContainer(experience: experience),
        );
      },
    );
  }
}
