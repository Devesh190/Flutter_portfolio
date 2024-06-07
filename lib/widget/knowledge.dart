import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/size.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowladge",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const KnowledgeText(text: "Flutter,Dart"),
        const KnowledgeText(text: "React-Native,Kotlin"),
        const KnowledgeText(text: "Git,Github,Jira"),
        const KnowledgeText(text: "Android Studio,XCode,VScode"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  final String text;
  const KnowledgeText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icon/check.svg"),
          const SizedBox(width: defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}
