import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';

class AreaInfoText extends StatelessWidget {
  final String title;
  final String text;
  const AreaInfoText({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 2),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Text(text)
      ],
    );
  }
}
