import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback callback;
  final Color bColor;
  final String name;

  const CustomButtom(
      {super.key,
      required this.callback,
      required this.bColor,
      required this.name});

  @override
  Widget build(BuildContext context) {
   
    double deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: Color(ConstantColor.primaryColor),
          ),
          onPressed: callback,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: deviceHeight * 0.08),
              Text(name),
            ],
          )),
    );
  }
}
