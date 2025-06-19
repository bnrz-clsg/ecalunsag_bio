import 'package:ecalunsag_bio/src/components/homescreen/my_certificates.dart';
import 'package:ecalunsag_bio/src/components/homescreen/my_experience.dart';
import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

import '../../responsive.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Responsive.isDesktop(context)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: MyExperience(),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Expanded(
                  flex: 1,
                  child: MyCertificates(),
                )
              ],
            )
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyExperience(),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  MyCertificates()
                ],
              ),
            ),
    );
  }
}
