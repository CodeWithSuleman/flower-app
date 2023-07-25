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
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(
        iconImage: 'assets/images/back.png',
        title: "PLENTIFY",
        image: 'assets/images/logo2.png',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Signup",
                    style: TextStyle(
                        color: Color(ConstantColor.primaryColor), fontSize: 36),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.8,
                    child: Text(
                      "Masukan No. Handphone Anda dan tunggu kode autentik dikirimkan",
                      style: TextStyle(
                          color: Color(ConstantColor.primaryColor),
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "ENTER USERNAME",
                  label: Text("Enter Username"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: height * 0.02),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "ENTER EMAIL",
                  label: Text("Enter Email"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: height * 0.02),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "ENTER PASSWORD",
                  label: Text("Enter Password"),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.4),
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
      ),
    );
  }
}
