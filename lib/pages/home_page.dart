import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  MyWidget(
                    city: City(
                        name: 'Jakarta',
                        imageUrl: 'assets/images/popular/pic.png',
                        isPopular: true),
                  ),
                  const SizedBox(width: 20),
                  MyWidget(
                    city: City(
                        name: 'Bandung',
                        imageUrl: 'assets/images/popular/pic-1.png',
                        isPopular: false),
                  ),
                  const SizedBox(width: 20),
                  MyWidget(
                    city: City(
                        name: 'Surabaya',
                        imageUrl: 'assets/images/popular/pic-2.png',
                        isPopular: false),
                  ),
                  const SizedBox(width: 20),
                  MyWidget(
                    city: City(
                        name: 'Palembang',
                        imageUrl: 'assets/images/popular/pic-3.png',
                        isPopular: false),
                  ),
                  const SizedBox(width: 20),
                  MyWidget(
                    city: City(
                        name: 'Aceh',
                        imageUrl: 'assets/images/popular/pic-4.png',
                        isPopular: false),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class City {
  final String name;
  final String imageUrl;
  final bool isPopular;

  City({required this.name, required this.imageUrl, required this.isPopular});
}

class MyWidget extends StatelessWidget {
  final City city;

  const MyWidget({super.key, required this.city});

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
              Align(
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
