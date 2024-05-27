import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWith = screenSize.width;
    return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: screenSize.height / 2,
              constraints: const BoxConstraints(minHeight: 350.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hi,\nI'm Devesh Choudhary\nA Flutter Developer",
                        style: TextStyle(
                            fontSize: 30.0,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.yellowPrimary,
                              foregroundColor: Colors.black12,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Get in touch',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/dash_removebg.png',
                    width: screenWith / 2,
                  )
                ],
              ),
            );
  }
}