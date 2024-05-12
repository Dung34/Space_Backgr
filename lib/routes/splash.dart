import 'dart:developer';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        child: Stack(children: [
          Image.asset(
            "assets/background/background.png",
            fit: BoxFit.fill,
            height: screenHeight,
            width: screenWidth,
          ),
          Positioned(
            top: screenHeight / 14,
            child: const SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "🚀 Get ready to unlock \nthe full potential of AI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'SVN-Product Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFF152340),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenWidth / 3 + 20,
                      ),
                      const Text(
                        "Join the AI Community",
                        style: TextStyle(
                          color: Color(0xFFF2F2F3),
                          fontSize: 20,
                          fontFamily: 'SVN-Product Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Tap into the limitless possibilities of AI \ntoday! Click 'Start' to begin your journey \nwith AI Generate App.",
                        style: TextStyle(
                          color: Color(0xFFF2F2F3),
                          fontSize: 16,
                          fontFamily: 'SVN-Product Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          log("message");
                        },
                        child: Container(
                          height: 48,
                          width: 170,
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0.99, -0.14),
                              end: Alignment(-0.99, 0.14),
                              colors: [Color(0xFF272FEB), Color(0xFF5D63F2)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Get started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight / 2 - screenWidth / 3,
            right: screenWidth / 2 - screenWidth / 3 - 20,
            child: SizedBox(
              height: screenWidth / 1.5,
              width: screenWidth / 1.5,
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/planet2.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
