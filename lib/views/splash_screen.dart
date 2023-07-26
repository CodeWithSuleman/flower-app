import 'package:flower_app/custom_widgets/custom_button.dart';
import 'package:flower_app/utils/constant_colors.dart';
import 'package:flower_app/views/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final double deviceHeight = MediaQuery.of(context).size.height;
   final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: deviceHeight * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(ConstantColor.primaryColor),
              ),
              height: deviceHeight * 0.5,
              width: deviceWidth * 2,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/Vector.png',
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Image.asset(
                      'assets/images/Logo.png',
                      width: deviceWidth * 0.7,
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 100,
                    child: Text(
                      "PLENTIFY",
                      style: TextStyle(
                          fontSize: 35, color: Color(ConstantColor.whiteColor)),
                    ),
                  ),
                  Positioned(
                      child: Image.asset(
                    'assets/images/Vector.png',
                    height: deviceHeight * 0.05,
                  ))
                ],
              ),
            ),
            SizedBox(height: deviceHeight * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text(
                "Get Ready",
                style: TextStyle(
                    color: Color(ConstantColor.primaryColor), fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Be HIGYENIC",
                  style: TextStyle(
                      color: Color(ConstantColor.primaryColor), fontSize: 40)),
            ),
            SizedBox(height: deviceHeight * 0.01),
            Text(
              "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
              style: TextStyle(color: Color(ConstantColor.primaryColor)),
            ),
            SizedBox(height: deviceHeight * 0.02),
            CustomButtom(
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInScreen(),
                    ),
                  );
                },
                bColor: Color(ConstantColor.primaryColor),
                name: 'Get Started')
          ],
        ),
      ),
    );
  }
}
