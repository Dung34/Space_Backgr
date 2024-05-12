import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/background/background.png",
              height: screenHeight,
              width: screenWidth,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: screenHeight / 10,
              left: 50,
              child: const Text(
                "Create your \nown space with \nAI Bot Power",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'SVN-Product Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: screenHeight / 10,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF333639),
                    borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.all(5),
                child: const Icon(
                  Icons.refresh_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            Positioned(
              top: screenHeight / 3,
              left: 20,
              child: Container(
                width: screenWidth - 40,
                height: 60,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF6F5FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 4,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0x4CEAEAEA),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: textEditingController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: "Write something",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color(0xFF858585),
                      fontSize: 14,
                      fontFamily: 'SVN-Product Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight / 3 + 60 + 20,
              right: 20,
              child: Container(
                height: 45,
                width: 140,
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
                    "Create new",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SVN-Product Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight / 6,
              left: screenWidth / 4,
              child: SizedBox(
                height: screenWidth / 2,
                width: screenWidth / 2,
                child: Image.asset("assets/images/planet3.png"),
              ),
            ),
            Positioned(
              bottom: screenHeight / 6 + screenWidth / 2,
              left: screenWidth / 4 - 50,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/venus.png"),
              ),
            ),
            Positioned(
              bottom: screenHeight / 6 - 50,
              right: screenWidth / 4 - 50,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/earth.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
