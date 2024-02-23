import 'package:cozy_marketplace/theme.dart';
import 'package:cozy_marketplace/widgets/city_card.dart';
import 'package:cozy_marketplace/widgets/buttom_navbar.dart';
import 'package:cozy_marketplace/widgets/space_card.dart';
import 'package:cozy_marketplace/widgets/tips_and_guide.dart';
import 'package:flutter/material.dart';
import 'package:cozy_marketplace/models/index.dart';

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
                  space: Space(
                      imageUrl: 'assets/images/recommended/pic-1.png',
                      name: 'Cozy Apartment',
                      isPopular: true,
                      rating: 4,
                      price: 100,
                      duration: 3,
                      address: 'Jakarta, Indonesia'),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  space: Space(
                      imageUrl: 'assets/images/recommended/pic-2.png',
                      name: 'Cozy Apartment',
                      isPopular: true,
                      rating: 4,
                      price: 100,
                      duration: 3,
                      address: 'Jakarta, Indonesia'),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  space: Space(
                      imageUrl: 'assets/images/recommended/pic-3.png',
                      name: 'Luxury Villa',
                      isPopular: false,
                      rating: 5,
                      price: 500,
                      duration: 7,
                      address: '456 Park Avenue'),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  space: Space(
                      imageUrl: 'assets/images/recommended/pic-4.png',
                      name: 'Modern Loft',
                      isPopular: true,
                      rating: 4,
                      price: 200,
                      duration: 5,
                      address: '789 Elm Street'),
                ),
                const SizedBox(height: 30),
                SpaceCard(
                  space: Space(
                      imageUrl: 'assets/images/recommended/pic.png',
                      name: 'Rustic Cabin',
                      isPopular: true,
                      rating: 3,
                      price: 150,
                      duration: 4,
                      address: '101 Oak Avenue'),
                ),
                const SizedBox(height: 30),
                Text(
                  'Tips & Guidance',
                  style: heading3.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                TipsAndGuide(
                  tips: Tips(
                      imageUrl: 'assets/images/tips/icon.png',
                      title: 'City Guidelines',
                      date: 'Updated 20 Apr'),
                ),
                const SizedBox(height: 30),
                TipsAndGuide(
                  tips: Tips(
                      imageUrl: 'assets/images/tips/icon-1.png',
                      title: 'Jakarta Fairship',
                      date: 'Updated 1 Apr'),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const ButtomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
