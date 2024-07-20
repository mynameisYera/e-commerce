import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTapChange;
  BottomNavBar({super.key, required this.onTapChange});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        color: const Color.fromARGB(255, 191, 191, 191),
        tabBackgroundColor: Color.fromARGB(255, 231, 231, 231),
        tabBorderRadius: 10,
        onTabChange: (value) => onTapChange!(value),
        tabs: [
          GButton(
            icon: Icons.shop,
            text: 'S H O P',
            ),
            GButton(
            icon: Icons.card_giftcard,
            text: 'C A R D',
            )
        ]),
    );
  }
}

