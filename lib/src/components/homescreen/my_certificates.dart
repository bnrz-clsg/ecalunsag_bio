import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/demo_trainings.dart';
import '../../responsive.dart';
import '../widgets/training_container.dart';

class MyCertificates extends StatelessWidget {
  const MyCertificates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: Responsive.isDesktop(context) ? false : true,
      physics: Responsive.isDesktop(context)
          ? AlwaysScrollableScrollPhysics()
          : NeverScrollableScrollPhysics(),
      itemCount: demoTrainings.length,
      itemBuilder: (context, index) {
        final training = demoTrainings[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 3),
          child: TrainingContainer(training: training),
        );
      },
    );
  }
}
