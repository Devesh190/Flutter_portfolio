import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String lable;
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage / 100),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: CustomColor.primaryColor,
                  backgroundColor: CustomColor.darkColor,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          lable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
