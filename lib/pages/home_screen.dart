import 'package:flutter/material.dart';
import 'package:portfolio/pages/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      AspectRatio(
        aspectRatio: 4,
        child: Image.asset("assets/images/bg.jpeg"),
      )
    ]);
  }
}
