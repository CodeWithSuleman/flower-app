import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String image;
  final String iconImage;
  final String title;
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.image,
      required this.iconImage});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: height * 0.05),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(children: [
              SizedBox(height: height * 0.1),
              Image.asset(
                widget.iconImage,
                height: height * 0.08,
              )
            ]),
          ),
          Row(
            children: [
              //  SizedBox(width: width * 0.06),
              Image.asset(widget.image, height: height * 0.05),
              SizedBox(width: width * 0.05),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 22, color: Color(ConstantColor.primaryColor)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
