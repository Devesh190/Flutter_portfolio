import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';
import '../constants/size.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final String lable;
  final double percentage;
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.lable,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage / 100),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lable,
                  style: const TextStyle(color: Colors.white),
                ),
                Text("${(percentage).toInt()}%")
              ],
            ),
            LinearProgressIndicator(
              value: value,
              color: CustomColor.primaryColor,
              backgroundColor: CustomColor.darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
