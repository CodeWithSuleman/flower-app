import 'package:flower_app/utils/constant_colors.dart';
import 'package:flower_app/views/login_screen.dart';
import 'package:flower_app/views/products_screen.dart';
import 'package:flower_app/views/signup_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  final screens = [
    const Products(),
    const LogInScreen(),
    const SignUpScreen(),
    const Products(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: Color(ConstantColor.primaryColor),
        ),
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/images/home.png'),
                color: Color(ConstantColor.primaryColor),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/images/heart.png'),
                color: Color(ConstantColor.primaryColor),
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/images/cart.png'),
                color: Color(ConstantColor.primaryColor),
              ),
              label: "Your Cart"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/images/profile.png'),
                color: Color(ConstantColor.primaryColor),
              ),
              label: "Me"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
