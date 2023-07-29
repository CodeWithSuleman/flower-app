import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class PrimaryProduct extends StatefulWidget {
  final Color color;
  final String title;
  final String flowerImage;
  final String shapeImage;
  final String footImage;
  final String iconImage;
  final String heartImage;
  final String subtitle;
  final String secondsubtitle;
  const PrimaryProduct(
      {super.key,
      required this.title,
      required this.flowerImage,
      required this.subtitle,
      required this.footImage,
      required this.secondsubtitle,
      required this.color,
      required this.iconImage,
      required this.heartImage,
      required this.shapeImage});

  @override
  State<PrimaryProduct> createState() => _PrimaryProductState();
}

class _PrimaryProductState extends State<PrimaryProduct> {
  @override
  Widget build(BuildContext context) {
   final double deviceWidth = MediaQuery.of(context).size.width;
   final double deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              height: deviceHeight * 0.3,
              width: deviceWidth * 1,
              child: Image.asset(widget.shapeImage),
            ),
            Positioned(
              left: 160,
              child: Image.asset(
                widget.flowerImage,
                width: deviceWidth * 0.5,
              ),
            ),
            Positioned(
              left: 20,
              top: 30,
              child: SizedBox(
                width: deviceWidth * 0.5,
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(ConstantColor.secondaryColor),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 28,
              left: 145,
              child: Image.asset(
                widget.footImage,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              left: 15,
              top: 80,
              child: SizedBox(
                width: deviceWidth * 0.4,
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(ConstantColor.secondaryColor),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 140,
              child: SizedBox(
                width: deviceWidth * 0.4,
                child: Text(
                  widget.secondsubtitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(ConstantColor.secondaryColor),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 130,
              child: Image.asset(
                widget.iconImage,
                height: deviceHeight * 0.06,
              ),
            ),
            Positioned(
              top: 130,
              left: 80,
              child: Image.asset(
                widget.heartImage,
                height: deviceHeight * 0.05,
              ),
            ),

          ],
        )
      ],
    );
  }
}
