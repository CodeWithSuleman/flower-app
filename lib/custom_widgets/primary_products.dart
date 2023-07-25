import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class PrimaryProduct extends StatefulWidget {
  final Color color;
  final String title;
  final String image;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String subtitle;
  final String subtitle2;
  const PrimaryProduct(
      {super.key,
      required this.title,
      required this.image,
      required this.subtitle,
      required this.image2,
      required this.subtitle2,
      required this.color,
      required this.image3,
      required this.image4,
      required this.image1});

  @override
  State<PrimaryProduct> createState() => _PrimaryProductState();
}

class _PrimaryProductState extends State<PrimaryProduct> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            // SizedBox(height: height * 0.4),
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
                height: height * 0.3,
                width: width * 1,
                child: Image.asset(widget.image1)),
            Positioned(
              left: 160,
              child: Image.asset(
                widget.image,
                width: width * 0.5,
              ),
            ),
            Positioned(
                left: 20,
                top: 30,
                child: SizedBox(
                    width: width * 0.5,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(ConstantColor.secondaryColor)),
                    ))),
            Positioned(
                top: 28,
                left: 145,
                child: Image.asset(
                  widget.image2,
                  height: height * 0.05,
                )),
            Positioned(
                left: 15,
                top: 80,
                child: SizedBox(
                    width: width * 0.5,
                    child: Text(
                      widget.subtitle,
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(ConstantColor.secondaryColor)),
                    ))),
            Positioned(
                left: 20,
                top: 140,
                child: SizedBox(
                    width: width * 0.4,
                    child: Text(
                      widget.subtitle2,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(ConstantColor.secondaryColor)),
                    ))),
            Positioned(
                top: 130,
                left: 130,
                child: Image.asset(
                  widget.image3,
                  height: height * 0.06,
                )),
            Positioned(
                top: 140,
                left: 80,
                child: Image.asset(
                  widget.image4,
                  height: height * 0.04,
                ))
          ],
        )
      ],
    );
  }
}
