import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widget/area_info.dart';

import '../constants/colors.dart';
import 'animated_circular_progress_indicator.dart';
import 'animated_linear_progress_indicator.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AreaInfoText(title: "Residence", text: "India"),
                const AreaInfoText(title: "City", text: "Delhi"),
                const AreaInfoText(title: "Age", text: "23"),
                const Skills(),
                const SizedBox(height: defaultPadding),
                const Coding(),
                const Divider(),
                Text(
                  "Knowladge",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
