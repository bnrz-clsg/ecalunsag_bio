import 'package:ecalunsag_bio/src/models/experience_model.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';

class ExperienceContainer extends StatefulWidget {
  final ExperienceModel experience;

  const ExperienceContainer({super.key, required this.experience});

  @override
  State<ExperienceContainer> createState() => _ExperienceContainerState();
}

class _ExperienceContainerState extends State<ExperienceContainer> {
  bool readMore = true;
  String buttonText = "Read More >>";

  void _handleReadMore() {
    setState(() {
      readMore = !readMore;
      if (readMore) {
        buttonText = "Read More >>";
      } else {
        buttonText = "<< Read Less";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      // padding: const EdgeInsets.all(defaultPadding),
      // elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color.fromARGB(255, 253, 253, 253),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.experience.company ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: darkColor, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.experience.role ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: secondaryColor),
            ),
            Text(
              widget.experience.yearAttended ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: secondaryColor),
            ),
            SizedBox(height: 12),
            if (!readMore)
              if (widget.experience.contents != null)
                ...widget.experience.contents!.map((content) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            content.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: secondaryColor),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            content.description,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: secondaryColor),
                          ),
                        ],
                      ),
                    )),
            TextButton(
              onPressed: _handleReadMore,
              child: Text(
                buttonText,
                style: TextStyle(color: primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
