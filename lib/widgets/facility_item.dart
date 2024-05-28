import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {

  final String name;
  final int total;
  final String imageUrl;

  const FacilityItem({super.key, required this.name, required this.total, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imageUrl, width: 32, height: 32),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '$total ',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: name,
                  style: greyTextStyle.copyWith(fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }
}
