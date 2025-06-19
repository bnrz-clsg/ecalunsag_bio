import 'package:ecalunsag_bio/src/components/widgets/experience_container.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/demo_my_experience.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experience",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: darkColor),
        ),
        SizedBox(height: defaultPadding),
        // Expanded makes the list take remaining space and be scrollable
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demoMyExperiences.length,
          itemBuilder: (context, index) {
            final experience = demoMyExperiences[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding),
              child: ExperienceContainer(experience: experience),
            );
          },
        ),
      ],
    );
  }
}


        // ListView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: const EdgeInsets.all(16),
//           itemCount: demoMyExperiences.length,
//           itemBuilder: (context, index) {
//             final experience = demoMyExperiences[index];
//             return Padding(
//               padding: const EdgeInsets.only(bottom: defaultPadding),
//               child: ExperienceContainer(experience: experience),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }

 // ListView.builder(
        //   shrinkWrap: true, // Important if inside another scroll view
        //   physics:
        //       const NeverScrollableScrollPhysics(), // Disable internal scrolling
        //   itemCount: demoMyExperiences.length,
        //   itemBuilder: (context, index) {
        //     final experience = demoMyExperiences[index];
        //     return Padding(
        //       padding: const EdgeInsets.only(bottom: defaultPadding),
        //       child: ExperienceContainer(experience: experience),
        //     );
        //   },
        // ),