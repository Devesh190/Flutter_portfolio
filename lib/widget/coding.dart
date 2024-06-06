import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/size.dart';
import 'animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text(
              "Coding",
              style: Theme.of(context).textTheme.titleMedium,
            )),
        const AnimatedLinearProgressIndicator(
          lable: "Dart",
          percentage: 90,
        ),
        const AnimatedLinearProgressIndicator(
          lable: "Java",
          percentage: 76,
        ),
        const AnimatedLinearProgressIndicator(
          lable: "JavaScript",
          percentage: 67,
        ),
        const AnimatedLinearProgressIndicator(
          lable: "Kolin",
          percentage: 62,
        ),
      ],
    );
  }
}
