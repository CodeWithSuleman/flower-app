import 'package:flower_app/utils/constant_colors.dart';
import 'package:flower_app/views/products_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  final screens = [
    Products(),
    Products(),
    Products(),
    Products(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(ConstantColor.primaryColor),
        unselectedItemColor: Color(ConstantColor.primaryColor),
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/home.png'),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/heart.png'),
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/cart.png'),
              ),
              label: "Your Cart"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/profile.png'),
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
