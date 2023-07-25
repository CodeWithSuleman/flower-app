import 'package:flower_app/custom_widgets/fifth_custom_product.dart';
import 'package:flower_app/custom_widgets/fourth_custom_product.dart';
import 'package:flower_app/custom_widgets/primary_products.dart';
import 'package:flower_app/custom_widgets/second_custom_appbar.dart';
import 'package:flower_app/custom_widgets/secondary_product.dart';
import 'package:flower_app/custom_widgets/third_custom_product.dart';
import 'package:flower_app/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const SecondCustomAppBar(
          image: 'assets/images/logo2.png', title: "PLENTIFY"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SecondaryProduct(
                  title: "There's a Plant for Everyone",
                  image: 'assets/images/product1.png',
                  subtitle: "Get Your First plant @40% of"),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        constraints: BoxConstraints(maxWidth: width * 0.8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Search",
                        suffixIcon: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ImageIcon(
                            AssetImage('assets/images/suffixicon.png'),
                          ),
                        ),
                        prefixIcon: const Icon(Icons.search)),
                  ),
                  SizedBox(width: width * 0.04),
                  Image.asset(
                    'assets/images/image2.png',
                    height: height * 0.09,
                    width: width * 0.1,
                  )
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Top Pick",
                        style: TextStyle(
                            color: Color(ConstantColor.secondaryColor))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Indoo",
                        style: TextStyle(
                            color: Color(ConstantColor.secondaryColor))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("OutDoor",
                        style: TextStyle(
                            color: Color(ConstantColor.secondaryColor))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Seeds",
                        style: TextStyle(
                            color: Color(ConstantColor.secondaryColor))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Planters",
                      style:
                          TextStyle(color: Color(ConstantColor.secondaryColor)),
                    ),
                  ),
                ],
              ),
              PrimaryProduct(
                title: "Air Purifier",
                image: 'assets/images/flower1.png',
                image2: 'assets/images/foot1.png',
                subtitle: "Pepromia",
                subtitle2: '\$400',
                color: Color(ConstantColor.productColor1),
                image3: 'assets/images/icon1.png',
                image4: 'assets/images/heart.png',
                image1: 'assets/images/Rectangle1.png',
              ),
              SizedBox(height: height * 0.01),
              PrimaryProduct(
                title: "Air Purifier",
                image: 'assets/images/flower2.png',
                image2: 'assets/images/foot1.png',
                subtitle: "WaterMelon",
                subtitle2: '\$200',
                color: Color(ConstantColor.productColor2),
                image3: 'assets/images/icon1.png',
                image4: 'assets/images/heart.png',
                image1: 'assets/images/Rectangle1.png',
              ),
              SizedBox(height: height * 0.01),
              PrimaryProduct(
                title: "Air Purifier",
                image: 'assets/images/flower3.png',
                image2: 'assets/images/foot1.png',
                subtitle: "Crotan Petra",
                subtitle2: '\$160',
                color: Color(ConstantColor.productColor3),
                image3: 'assets/images/icon1.png',
                image4: 'assets/images/heart.png',
                image1: 'assets/images/Rectangle1.png',
              ),
              SizedBox(height: height * 0.01),
              PrimaryProduct(
                title: "Air Purifier",
                image: 'assets/images/flower4.png',
                image2: 'assets/images/foot1.png',
                subtitle: "Bird’s Nest Fern",
                subtitle2: '\$160',
                color: Color(ConstantColor.productColor4),
                image3: 'assets/images/icon1.png',
                image4: 'assets/images/heart.png',
                image1: 'assets/images/Rectangle1.png',
              ),
              SizedBox(height: height * 0.01),
              FourthCustomProduct(
                image: 'assets/images/product2.png',
                text:
                    "Caring for plants should be fun. That's why we offer 1-on-1 virtual consultations from the comfort of your home or office. ",
                color: Color(ConstantColor.productColor1),
                image2: 'assets/images/icon2.png',
              ),
              SizedBox(height: height * 0.01),
              ThirdCustomProduct(
                title: "Air Purifier",
                image: 'assets/images/flower5.png',
                image2: 'assets/images/foot1.png',
                subtitle: "Cactus",
                subtitle2: '\$260',
                color: Color(ConstantColor.productColor2),
                image3: 'assets/images/icon1.png',
                image4: 'assets/images/heart.png',
                image1: 'assets/images/Rectangle1.png',
              ),
              SizedBox(height: height * 0.01),
              FifthCustomProduct(
                title: "Invite a Friend and earn Plantify rewards",
                image: 'assets/images/Rectangle1.png',
                subtitle: "Redeem them to get instant discounts",
                image2: 'assets/images/logo2.png',
                image3: 'assets/images/ellipse.png',
                color: Color(ConstantColor.productColor1),
              ),
              SizedBox(height: height * 0.01),
              PrimaryProduct(
                title: "Air Purifier",
                image: 'assets/images/flower6.png',
                image2: 'assets/images/foot1.png',
                subtitle: "Aloe Vera",
                subtitle2: '\$210',
                color: Color(ConstantColor.productColor2),
                image3: 'assets/images/icon1.png',
                image4: 'assets/images/heart.png',
                image1: 'assets/images/Rectangle1.png',
              ),
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  Text(
                    "Plant a Life",
                    style: TextStyle(
                        color: Color(ConstantColor.secondaryColor),
                        letterSpacing: 1.8,
                        fontSize: 36),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Live amongst Living",
                    style: TextStyle(
                      color: Color(ConstantColor.secondaryColor),
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Sprea The Joy",
                    style: TextStyle(
                        color: Color(ConstantColor.secondaryColor),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
