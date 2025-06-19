import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/training_model.dart';

class TrainingContainer extends StatelessWidget {
  final TrainingModel training;
  const TrainingContainer({
    super.key,
    required this.training,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color.fromARGB(255, 253, 253, 253),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              training.title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: darkColor, fontWeight: FontWeight.bold),
            ),
            ...training.description.map((desc) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    "• $desc",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: secondaryColor),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
