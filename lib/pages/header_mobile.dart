import 'package:flutter/material.dart';

import '../styles/style.dart';
import '../widget/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      padding: const EdgeInsets.all(5),
      decoration: kHedarDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
        ],
      ),
    );
  }
}
