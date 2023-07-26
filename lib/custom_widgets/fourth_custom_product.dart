import 'package:flutter/material.dart';

class FourthCustomProduct extends StatefulWidget {
  final String shapeImage;
  final String iconImage2;
  final String text;
  final Color color;
  const FourthCustomProduct(
      {super.key,
      required this.shapeImage,
      required this.text,
      required this.color,
      required this.iconImage2});

  @override
  State<FourthCustomProduct> createState() => _FourthCustomProductState();
}

class _FourthCustomProductState extends State<FourthCustomProduct> {
  @override
  Widget build(BuildContext context) {
   final double deviceWidth = MediaQuery.of(context).size.width;
   final double deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(height: deviceHeight * 0.4),
            Container(
                decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.circular(10)),
                height: deviceHeight * 0.3,
                width: deviceWidth * 1,
                child: Image.asset(widget.shapeImage)),
            Positioned(
              left: 130,
              top: 80,
              child: Image.asset(
                widget.iconImage2,
                height: deviceHeight * 0.09,
              ),
            ),
            Positioned(
              top: 250,
              child: Container(width:deviceWidth* 0.9, child: Text(widget.text)),
            )
          ],
        )
      ],
    );
  }
}
