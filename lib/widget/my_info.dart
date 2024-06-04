import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: const Color(0XFF242430),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/dash_removebg.png"),
              ),
              const Spacer(),
              Text(
                "Devesh Choudhary",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Text(
                "Full stack mobile developer",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ));
  }
}
