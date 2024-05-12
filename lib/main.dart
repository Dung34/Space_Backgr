// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:space_splash/routes/page2.dart';
import 'package:space_splash/routes/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceSplash',
      theme: ThemeData.dark(),
      home: Splash(),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final List<String> listFish = [
    "Starship",
    "Big fish ocean",
    "Jelly fish",
    "Star purple",
    "Sparkling whale",
    "Star sky"
  ];
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  BackButton(),
                  Text(
                    "History",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SVN-Product Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight - 80,
                width: screenWidth,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (context, index) => FishImage(
                      imageSource: "fish$index", imageName: listFish[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FishImage extends StatelessWidget {
  final String imageSource;
  final String imageName;
  const FishImage({
    super.key,
    required this.imageSource,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/$imageSource.png",
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Text(
              imageName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17.95,
                fontFamily: 'SVN-Product Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
