import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Column(
        children: [
          Spacer(flex: 2),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
          ),
          Spacer(),
          Text(
            "Ebenezer Calunsag",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            "Flutter Developer & Founder of \n The Flutter Way",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              height: 1.5,
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
