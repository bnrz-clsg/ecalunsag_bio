import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_texedicon.dart';
import '../widgets/title_text.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);

  final String? text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding / 2),
            child: TitleText(text: 'ABOUT ME'),
          ),
          CustomTexedIcon(
            icon: Icons.phone,
            text: "+63 942 709 9189",
          ),
          CustomTexedIcon(
            icon: Icons.alternate_email,
            text: "e.calunsag12@gmail.com",
          ),
          CustomTexedIcon(
            icon: Icons.pin_drop,
            text: "4 Bethsaida St. Multinational Village, Parañaque City",
          ),
        ],
      ),
    );
  }
}
