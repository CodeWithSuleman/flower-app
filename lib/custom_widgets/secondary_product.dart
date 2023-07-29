import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class SecondaryProduct extends StatefulWidget {
  final String title;
  final String image;
  final String subtitle;
  const SecondaryProduct(
      {super.key,
      required this.title,
      required this.image,
      required this.subtitle});

  @override
  State<SecondaryProduct> createState() => _SecondaryProductState();
}

class _SecondaryProductState extends State<SecondaryProduct> {
  @override
  Widget build(BuildContext context) {
   final  double deviceWidth = MediaQuery.of(context).size.width;
   
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
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
                          color: Color(ConstantColor.secondaryColor)),
                    ))),
            Positioned(
                left: 15,
                top: 100,
                child: SizedBox(
                    width: deviceWidth * 0.4,
                    child: Text(
                      widget.subtitle,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(ConstantColor.secondaryColor)),
                    ))),
          ],
        )
      ],
    );
  }
}
