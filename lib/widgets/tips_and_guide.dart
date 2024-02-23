import 'package:cozy_marketplace/models/index.dart';
import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class TipsAndGuide extends StatelessWidget {
  final Tips tips;

  const TipsAndGuide({super.key, required this.tips});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              tips.imageUrl,
              width: 80,
              height: 80,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tips.title, style: heading1.copyWith(fontSize: 18)),
                Text(tips.date, style: heading2.copyWith(fontSize: 14)),
              ],
            ),
          ],
        ),
        Image.asset(
          'assets/images/Icon_right_outline.png',
          width: 80,
          height: 80,
        ),
      ],
    );
  }
}
