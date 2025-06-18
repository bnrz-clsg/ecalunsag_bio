import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/info_text.dart';
import '../widgets/title_text.dart';

class EducationAndCertificate extends StatelessWidget {
  const EducationAndCertificate({
    Key? key,
    this.text,
    this.title,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: TitleText(text: 'PROFESIONAL CERTIFICATE'),
          ),
          InfoText(
            title: "Certified Service Eligible (CSE)",
            text: "2023",
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: defaultPadding, bottom: defaultPadding / 2),
            child: TitleText(text: 'EDUCATION'),
          ),
          InfoText(
            title: "Bachelor of Science in Information Technology",
            text: "Technological Institute of the Philippines \n- Manila",
          ),
          InfoText(
            title: "Aircraft Maintenance Technology",
            text: "Philippine State College of Aeronautics \n- Pasay",
          ),
        ],
      ),
    );
  }
}
