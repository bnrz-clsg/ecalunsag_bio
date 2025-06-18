import 'package:ecalunsag_bio/src/constant.dart';
import 'package:ecalunsag_bio/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: bgColor,
            canvasColor: bgColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)
                .copyWith(
                  bodyMedium: TextStyle(color: textColor),
                  bodyLarge: TextStyle(color: textColor),
                )),
        home: HomeScreen());
  }
}
