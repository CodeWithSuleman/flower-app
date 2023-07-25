import 'package:flower_app/custom_widgets/custom_appbar.dart';
import 'package:flower_app/custom_widgets/custom_button.dart';
import 'package:flower_app/utils/constant_colors.dart';
import 'package:flower_app/views/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                  "SignUp",
                  style: TextStyle(
                      color: Color(ConstantColor.primaryColor), fontSize: 30),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Text(
              "Masukan No. Handphone Anda dan tunggu kode autentik dikirimkan",
              style: TextStyle(
                color: Color(ConstantColor.primaryColor),
              ),
            ),
            SizedBox(height: height * 0.02),
            TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER USERNAME",
                label: const Text("Enter Username"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER EMAIL",
                label: const Text("Enter Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER PASSWORD",
                label: const Text("Enter Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Already Have an Account",
                      style:
                          TextStyle(color: Color(ConstantColor.primaryColor)),
                    ))
              ],
            ),
            SizedBox(height: height * 0.02),
            CustomButtom(
              callback: () {},
              bColor: Color(ConstantColor.primaryColor),
              name: "SignUp",
            )
          ],
        ),
      ),
    );
  }
}
