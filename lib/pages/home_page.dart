import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widget/header_desktop.dart';
import 'package:portfolio/widget/header_mobile.dart';
import 'package:portfolio/widget/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../constants/size.dart';
import '../widget/Mobile_drawer.dart';
import '../widget/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWith
            ? null
            : const MobileDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            constraints.maxWidth >= kMinDesktopWith
                ? const HeaderDesktop()
                : HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
            const MainDesktop(),
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
    });
  }
}
