import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class SecondCustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String image;
  final String title;
  final String image2;
  final String image3;
  const SecondCustomAppBar({
    super.key,
    required this.title,
    required this.image,
    required this.image2,
    required this.image3,
  });

  @override
  State<SecondCustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppBarState extends State<SecondCustomAppBar> {
  @override
  Widget build(BuildContext context) {
   final  double deviceWidth = MediaQuery.of(context).size.width;
   final double deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 23),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              SizedBox(height: deviceHeight * 0.09),
              Image.asset(widget.image, height: deviceHeight * 0.03),
              SizedBox(width: deviceWidth * 0.04),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 20, color: Color(ConstantColor.primaryColor)),
              ),
              SizedBox(width: width * 0.4),
              Image.asset(
                widget.image2,
                height: height * 0.03,
              ),
              SizedBox(width: width * 0.02),
              Image.asset(
                widget.image3,
                height: height * 0.04,
              ),
            ],
          )
        ],
      ),
    );
  }
}


// <<<<<<< fix-UI-Login-and-Signup
//   final String image2;
//   final String image3;

// =======
