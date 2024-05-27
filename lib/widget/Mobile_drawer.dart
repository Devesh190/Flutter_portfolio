import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
          backgroundColor: CustomColor.scaffoldBg,
          child: ListView.builder(
              itemCount: navIcons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 30),
                  leading: Icon(navIcons[index]),
                  title: Text(navTitles[index]),
                  titleTextStyle: const TextStyle(
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                );
              }));
  }
}