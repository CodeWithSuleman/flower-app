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
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              child: Image.asset(
                widget.image,
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
                left: 15,
                top: 100,
                child: SizedBox(
                    width: width * 0.4,
                    child: Text(
                      widget.subtitle,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(ConstantColor.secondaryColor)),
                    ))),
          ],
        )
      ],
    );
  }
}
