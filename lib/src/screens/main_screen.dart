import 'package:ecalunsag_bio/src/components/mainscreen/side_bar.dart';
import 'package:ecalunsag_bio/src/constant.dart';
import 'package:ecalunsag_bio/src/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: Responsive.isDesktop(context) ? null : SideBar(),
      body: Center(
        child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Stack(
              children: [
                Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: 180.0,
                      color: primaryColor,
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: Column(
                          children: [
                            ...children,
                          ],
                        ),
                      ),
                    ),
                    if (Responsive.isDesktop(context))
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: defaultPadding, bottom: defaultPadding),
                            child: SideBar(),
                          )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
