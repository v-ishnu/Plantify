import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:farmer_ecommerce/Screen/Cart/Cart.dart';
import 'package:farmer_ecommerce/Screen/Favourite/Favourite.dart';
import 'package:farmer_ecommerce/Screen/Profile/Profile.dart';
import 'package:farmer_ecommerce/Utilities/Color.dart';
import 'dart:ui';

import '../Screen/Home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myCurrentIndex = 0;

  final List<Widget> widgetList = [
    const Home(),
    const Favourite(),
    const Cart(),
    const Profile(),

    // Add other screens here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: myCurrentIndex,
        children: widgetList,
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 70,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 15),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(IconlyBold.home, IconlyBroken.home, 0),
                buildNavItem(IconlyBold.heart, IconlyBroken.heart, 1),
                buildNavItem(IconlyBold.buy, IconlyBroken.buy, 2),
                buildNavItem(IconlyBold.profile, IconlyBroken.profile, 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(IconData selectedIcon, IconData unselectedIcon, int index) {
    bool isSelected = myCurrentIndex == index;
    bool isProfileSelected = myCurrentIndex == 3;
    bool isBudgetSelected = myCurrentIndex == 1;


    Color iconColor = isProfileSelected || isBudgetSelected
        ? Colors.black
        : (isSelected ? Colors.black : Colors.white.withOpacity(0.7));


    IconData icon = isProfileSelected && index == 3 || isBudgetSelected && index == 1
        ? selectedIcon
        : (isSelected ? selectedIcon : unselectedIcon);

    return GestureDetector(
      onTap: () {
        setState(() {
          myCurrentIndex = index;
        });
      },
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
