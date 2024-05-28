import 'package:cozy/models/Tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {

  final Tips tips;

  const TipsCard({super.key, required this.tips});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          height: 80,
          width: 80,
          ),
          const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(
                fontSize: 18
              ),
              ),
            const SizedBox(height: 4),
            Text(
              tips.description,
              style: greyTextStyle.copyWith(
                fontSize: 14
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.chevron_right, 
            size: 24,
            color: greyColor,))
      ],
    );
  }
}