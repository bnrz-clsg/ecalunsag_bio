import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant.dart';
import '../widgets/title_text.dart';

class FuntionalSkills extends StatelessWidget {
  const FuntionalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 2),
          child: TitleText(text: "FUNTIONAL SKILLS"),
        ),
        _functionalSkillText("Software Development Lifecycle (SDLC)"),
        _functionalSkillText("UI/UX Design Implementation"),
        _functionalSkillText("Backend Integration"),
        _functionalSkillText("Authentication & Security"),
        _functionalSkillText("Database Management"),
        _functionalSkillText("API Integration"),
        _functionalSkillText("Manual Testing & Debugging"),
        _functionalSkillText("Continuous Learning & Adaptability"),
      ],
    );
  }

  Widget _functionalSkillText(text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg",
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn)),
          SizedBox(width: defaultPadding / 2),
          Expanded(
              child: Text(
            text,
            style: TextStyle(fontSize: 12.0),
          )),
        ],
      ),
    );
  }
}
