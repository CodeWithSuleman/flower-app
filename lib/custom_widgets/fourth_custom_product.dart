import 'package:flutter/material.dart';

class FourthCustomProduct extends StatefulWidget {
  final String image;
  final String image2;
  final String text;
  final Color color;
  const FourthCustomProduct(
      {super.key,
      required this.image,
      required this.text,
      required this.color,
      required this.image2});

  @override
  State<FourthCustomProduct> createState() => _FourthCustomProductState();
}

class _FourthCustomProductState extends State<FourthCustomProduct> {
  @override
  Widget build(BuildContext context) {
   double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
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
                child: Image.asset(widget.image)),
            Positioned(
              left: 130,
              top: 80,
              child: Image.asset(
                widget.image2,
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
