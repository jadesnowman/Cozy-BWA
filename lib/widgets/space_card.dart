import 'package:cozy_marketplace/models/index.dart';
import 'package:cozy_marketplace/pages/detail_page.dart';
import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(),
        ),
      ),
      child: Row(
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
              Text(space.name, style: heading1.copyWith(fontSize: 18)),
              RichText(
                  text: TextSpan(
                text: '\$${space.price}',
                style: heading1.copyWith(fontSize: 16, color: purpleColor),
                children: [
                  TextSpan(
                    text: ' / month',
                    style: heading2.copyWith(fontSize: 16),
                  ),
                ],
              )),
              SizedBox(height: 16),
              Text(space.address, style: heading2.copyWith(fontSize: 14)),
            ],
          )
        ],
      ),
    );
  }
}
