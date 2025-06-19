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
      child: SingleChildScrollView(
        padding: EdgeInsets.only(right: defaultPadding / 2),
        child: Responsive.isDesktop(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: MyExperience(),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Expanded(
                    flex: 1,
                    child: MyCertificates(),
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyExperience(),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  MyCertificates()
                ],
              ),
      ),
    );
  }
}
