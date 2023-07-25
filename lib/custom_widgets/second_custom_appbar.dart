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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 23),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(height: height * 0.09),
              Image.asset(widget.image, height: height * 0.03),
              SizedBox(width: width * 0.04),
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
