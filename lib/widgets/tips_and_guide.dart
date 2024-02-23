import 'package:cozy_marketplace/models/index.dart';
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
                Text(tips.title),
                Text(tips.date),
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
