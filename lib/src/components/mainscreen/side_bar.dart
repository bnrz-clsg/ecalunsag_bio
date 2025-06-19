import 'package:ecalunsag_bio/src/components/mainscreen/education_and_certificate.dart';
import 'package:ecalunsag_bio/src/components/mainscreen/personal_info.dart';
import 'package:ecalunsag_bio/src/components/mainscreen/skills.dart';
import 'package:ecalunsag_bio/src/constant.dart';
// import 'package:ecalunsag_bio/src/widgets/title_with_bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../responsive.dart';
import '../homescreen/social_container.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
      ),
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/iam_me.png",
                fit: BoxFit.cover,
              ),
              // MyInfo(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding),
                child: Column(
                  children: [
                    PersonalInfo(), // Personal info
                    Divider(color: secondaryColor),
                    EducationAndCertificate(), // Education and Certificate
                    Divider(color: secondaryColor),
                    Skills(), //Skills
                    Divider(color: secondaryColor),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    if (!Responsive.isDesktop(context))
                      Center(child: SocialContainer()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
