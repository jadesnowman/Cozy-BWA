import 'package:cozy_marketplace/models/city.dart';
import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        color: grayColor,
        height: 102,
        width: 120,
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                city.imageUrl,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
              city.isPopular
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/Icon_star_solid.png',
                            width: 22,
                            height: 22,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox()
            ]),
            const SizedBox(
              height: 11,
            ),
            Text(city.name,
                style: heading4.copyWith(
                  fontSize: 16,
                ))
          ],
        ),
      ),
    );
  }
}
