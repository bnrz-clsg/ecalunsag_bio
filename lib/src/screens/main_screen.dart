import 'package:ecalunsag_bio/src/components/mainscreen/side_bar.dart';
import 'package:ecalunsag_bio/src/constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      body: Center(
          child: Stack(
        children: [
          _buildBody(),
          Positioned(
              right: defaultPadding,
              top: 0,
              bottom: defaultPadding,
              child: SideBar())
        ],
      )),
    );
  }

  Widget _buildBody() {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Row(
        children: [
          Expanded(
              flex: 9,
              child: Center(
                child: Text('This is main screen'),
              )),
          SizedBox(width: 12.0),
          Expanded(
              flex: 1,
              child: Container(
                color: primaryColor,
              )),
        ],
      ),
    );
  }
}
