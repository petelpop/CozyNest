import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {

  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem({super.key, required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(      
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          height: 26,
          width: 26),
          Spacer(),
          isActive ? Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.circular(1000)
            ),
          )
          : Container()
      ],
    );
  }
}