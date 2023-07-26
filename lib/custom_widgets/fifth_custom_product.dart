import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class FifthCustomProduct extends StatefulWidget {
  final Color color;
  final String title;
  final String image;
  final String image2;
  final String image3;
  final String subtitle;
  const FifthCustomProduct({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.image2,
    required this.color,
    required this.image3,
  });

  @override
  State<FifthCustomProduct> createState() => _PrimaryProductState();
}

class _PrimaryProductState extends State<FifthCustomProduct> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
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
              child: Image.asset(widget.image),
            ),
            Positioned(
              top: 100,
              left: 190,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.03,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              top: 80,
              left: 210,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.05,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              top: 60,
              left: 240,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.04,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              top: 40,
              left: 230,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.03,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              top: 20,
              left: 250,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.02,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              top: 10,
              left: 270,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.01,
                height: deviceHeight * 0.05,
              ),
            ),
            Positioned(
              top: 90,
              left: 230,
              child: Image.asset(
                widget.image3,
                width: deviceWidth * 0.04,
                height: deviceHeight * 0.08,
              ),
            ),
            Positioned(
              left: 20,
              top: 30,
              child: SizedBox(
                width: deviceWidth * 0.6,
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
              top: 130,
              left: 170,
              child: Image.asset(
                widget.image2,
                height: deviceHeight * 0.09,
              ),
            ),
            Positioned(
              left: 15,
              top: 130,
              child: SizedBox(
                width: deviceWidth * 0.4,
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(ConstantColor.secondaryColor),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: 110,
              child: Container(
                child: Center(
                  child: Text(
                    "Invite",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(ConstantColor.whiteColor),
                    ),
                  ),
                ),
                height: deviceHeight * 0.06,
                width: deviceWidth * 0.2,
                decoration: BoxDecoration(
                  color: Color(ConstantColor.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
