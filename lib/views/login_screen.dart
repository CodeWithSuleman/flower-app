import 'package:flower_app/custom_widgets/custom_appbar.dart';
import 'package:flower_app/custom_widgets/custom_button.dart';
import 'package:flower_app/utils/constant_colors.dart';
import 'package:flower_app/views/bottom_nav_screen.dart';

import 'package:flower_app/views/signup_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
   final double deviceHeight = MediaQuery.of(context).size.height;
   final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        iconImage: 'assets/images/back.png',
        title: "PLENTIFY",
        image: 'assets/images/logo2.png',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "LogIn",
                  style: TextStyle(
                      color: Color(ConstantColor.primaryColor), fontSize: 30),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.02),
            Text(
              "Masukan NISN dan password untuk memulai belajar sekarang",
              style: TextStyle(
                color: Color(ConstantColor.primaryColor),
              ),
            ),
            SizedBox(height: deviceHeight * 0.06),
            TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER EMAIL",
                label: const Text("Enter Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: deviceHeight * 0.04),
            TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER PASSWORD",
                label: const Text("Enter Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: deviceWidth * 0.4),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Don't Have an Account",
                      style:
                          TextStyle(color: Color(ConstantColor.primaryColor)),
                    ))
              ],
            ),
            SizedBox(height: deviceWidth * 0.02),
            CustomButtom(
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBarScreen(),
                    ),
                  );
                },
                bColor: Color(ConstantColor.primaryColor),
                name: "Login")
          ],
        ),
      ),
    );
  }
}
