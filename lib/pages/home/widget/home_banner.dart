import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: CustomColor.bgColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bringing Your Ideas to Life with \nCreativity and Technology",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const MyAnimatedText(),
                const SizedBox(height: defaultPadding),
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: CustomColor.primaryColor),
                    child: const Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: CustomColor.darkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      child: Row(
        
        children: [
          const Text.rich(TextSpan(text: "<", children: [
            TextSpan(
                text: "Flutter",
                style: TextStyle(color: CustomColor.primaryColor)),
            TextSpan(text: '>')
          ])),
          const SizedBox(width: defaultPadding / 2),
          const Text("I build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("responsive web and mobile app",
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText("responsive web and mobile app",
                speed: const Duration(milliseconds: 60)),
          ]),
          const SizedBox(width: defaultPadding / 2),
          const Text.rich(TextSpan(text: "<", children: [
            TextSpan(
                text: "Flutter",
                style: TextStyle(color: CustomColor.primaryColor)),
            TextSpan(text: '>')
          ])),
        ],
      ),
    );
  }
}
