import 'package:flutter/material.dart';

import '../constants/size.dart';
import '../widget/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;
  const MainScreen({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              const Expanded(flex: 2, child: SideMenu()),
              const SizedBox(width: defaultPadding),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [...children],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
