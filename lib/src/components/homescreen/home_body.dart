import 'package:ecalunsag_bio/src/components/homescreen/my_certificates.dart';
import 'package:ecalunsag_bio/src/components/homescreen/my_experience.dart';
import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

import '../../responsive.dart';
import '../widgets/title_with_bg.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Responsive.isDesktop(context)
            ? _buildWebLayout()
            : _builMobileLayout());
  }

  Widget _buildWebLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderTitle("Work Experience"),
              Expanded(child: MyExperience()),
            ],
          ),
        ),
        SizedBox(width: defaultPadding / 2),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderTitle("Training and Certificates"),
              Expanded(child: MyCertificates()),
            ],
          ),
        )
      ],
    );
  }

  Widget _builMobileLayout() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderTitle("Work Experience"),
          MyExperience(),
          SizedBox(width: defaultPadding / 2),
          _buildHeaderTitle("Training and Certificates"),
          MyCertificates()
        ],
      ),
    );
  }

  Widget _buildHeaderTitle(title) {
    return Padding(
        padding: EdgeInsets.only(bottom: defaultPadding / 2),
        child: TitleWithBg(text: title));
  }
}
