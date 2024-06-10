import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/colors.dart';

import 'pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devesh',
      theme: ThemeData.dark().copyWith(
          primaryColor: CustomColor.primaryColor,
          scaffoldBackgroundColor: CustomColor.bgColor,
          canvasColor: CustomColor.bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                  bodyLarge: const TextStyle(color: CustomColor.bodyTextColor),
                  bodyMedium:
                      const TextStyle(color: CustomColor.bodyTextColor))),
      home: const HomeScreen(),
    );
  }
}
