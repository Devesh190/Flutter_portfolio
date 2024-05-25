import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widget/header_desktop.dart';
import 'package:portfolio/widget/site_logo.dart';

import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
          // const HeaderDesktop(),
          Container(
            height: 50,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            padding: const EdgeInsets.all(5),
            decoration: kHedarDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SiteLogo(
                  onTap: () {},
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              ],
            ),
          ),
          Container(
            height: 500,
            width: double.maxFinite,
          ),
//PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          //FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
