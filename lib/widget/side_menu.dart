import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widget/area_info.dart';

import '../constants/colors.dart';
import 'animated_circular_progress_indicator.dart';
import 'animated_linear_progress_indicator.dart';
import 'coding.dart';
import 'knowledge.dart';
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
                const Knowledge(),
                const Divider(),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Download CV",
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(
                          width: defaultPadding / 2,
                        ),
                        SvgPicture.asset("assets/icon/download.svg")
                      ],
                    )),
                Container(
                  color: const Color(0xff24242E),
                  margin: const EdgeInsets.only(top: defaultPadding / 2),
                  child: Row(
                    children: [
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icon/linkedin.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icon/github.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icon/twitter.svg")),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
