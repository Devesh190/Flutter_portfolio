
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/pages/main_screen.dart';

import 'widget/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner()
    ]);
  }
}



