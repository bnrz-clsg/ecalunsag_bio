import 'package:ecalunsag_bio/src/components/homescreen/home_banner.dart';
import 'package:ecalunsag_bio/src/components/homescreen/home_body.dart';
import 'package:ecalunsag_bio/src/constant.dart';
import 'package:ecalunsag_bio/src/screens/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SizedBox(height: defaultPadding),
        HomeBody(),
      ],
    );
  }
}
