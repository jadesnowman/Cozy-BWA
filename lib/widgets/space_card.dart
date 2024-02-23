import 'package:cozy_marketplace/models/index.dart';
import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  space.imageUrl,
                  width: 130,
                  height: 110,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Icon_star_solid.png',
                        width: 18,
                        height: 18,
                      ),
                      Text(
                        '1/3',
                        style: heading1Light.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(space.name),
            Text(space.imageUrl),
            Text(space.isPopular.toString())
          ],
        )
      ],
    );
  }
}
