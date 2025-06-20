import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/demo_trainings.dart';
import '../widgets/title_with_bg.dart';
import '../widgets/training_container.dart';

class MyCertificates extends StatelessWidget {
  const MyCertificates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithBg(text: "Training & Certificates"),
          // Text(
          //   "Training & Certificates",
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
            itemCount: demoTrainings.length,
            itemBuilder: (context, index) {
              final training = demoTrainings[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding / 3),
                child: TrainingContainer(training: training),
              );
            },
          ),
        ],
      ),
    );
  }
}
