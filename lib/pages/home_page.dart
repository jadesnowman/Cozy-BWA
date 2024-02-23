import 'package:cozy_marketplace/theme.dart';
import 'package:cozy_marketplace/widgets/city_card.dart';
import 'package:cozy_marketplace/widgets/space_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy_marketplace/models/city.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore Now!',
                  style: heading1.copyWith(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Mencari kosan yang cozy',
                  style: heading2.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Popular Cities',
                  style: heading3.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 150,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    CityCard(
                      city: City(
                          name: 'Jakarta',
                          imageUrl: 'assets/images/popular/pic.png',
                          isPopular: false),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      city: City(
                          name: 'Bandung',
                          imageUrl: 'assets/images/popular/pic-1.png',
                          isPopular: true),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      city: City(
                          name: 'Surabaya',
                          imageUrl: 'assets/images/popular/pic-2.png',
                          isPopular: false),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      city: City(
                          name: 'Palembang',
                          imageUrl: 'assets/images/popular/pic-3.png',
                          isPopular: false),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      city: City(
                          name: 'Aceh',
                          imageUrl: 'assets/images/popular/pic-4.png',
                          isPopular: false),
                    ),
                  ]),
                ),
                const SizedBox(height: 30),
                Text(
                  'Recommended Space',
                  style: heading3.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                SpaceCard(
                  city: City(
                    name: 'Aceh',
                    imageUrl: 'assets/images/recommended/pic-1.png',
                    isPopular: true,
                  ),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  city: City(
                    name: 'Aceh',
                    imageUrl: 'assets/images/recommended/pic-2.png',
                    isPopular: true,
                  ),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  city: City(
                    name: 'Aceh',
                    imageUrl: 'assets/images/recommended/pic-3.png',
                    isPopular: true,
                  ),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  city: City(
                    name: 'Aceh',
                    imageUrl: 'assets/images/recommended/pic-4.png',
                    isPopular: true,
                  ),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  city: City(
                    name: 'Aceh',
                    imageUrl: 'assets/images/recommended/pic.png',
                    isPopular: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
