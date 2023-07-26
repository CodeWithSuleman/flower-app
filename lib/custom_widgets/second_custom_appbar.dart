import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class SecondCustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String image;

  final String title;
  const SecondCustomAppBar({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  State<SecondCustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(76);
}

class _CustomAppBarState extends State<SecondCustomAppBar> {
  @override
  Widget build(BuildContext context) {
     double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 23),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(height: deviceHeight * 0.09),
              Image.asset(widget.image, height: deviceHeight * 0.03),
              SizedBox(width: deviceWidth * 0.04),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 17, color: Color(ConstantColor.primaryColor)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
