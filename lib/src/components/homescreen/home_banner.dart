import 'package:ecalunsag_bio/src/components/homescreen/social_container.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/banner_bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(color: darkColor.withOpacity(0.35)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ebenezer Parlade Calunsag",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: bgColor,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: bgColor,
                                ),
                      ),
                      Text(
                        "I am a mobile and web application developer",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: bgColor,
                            ),
                        // TextStyle(color: bgColor),
                      ),
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 3,
                    child: Center(child: SocialContainer()),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
