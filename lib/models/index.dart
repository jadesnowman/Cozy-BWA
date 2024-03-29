import 'package:flutter/material.dart';

class City {
  final String name;
  final String imageUrl;
  final bool isPopular;

  City({required this.name, required this.imageUrl, required this.isPopular});
}

class Space {
  final int rating;
  final String name;
  final String imageUrl;
  final int price;
  final int duration;
  final String address;
  final bool isPopular;

  Space(
      {required this.name,
      required this.imageUrl,
      required this.isPopular,
      required this.rating,
      required this.price,
      required this.duration,
      required this.address});
}

class Tips {
  final String title;
  final String imageUrl;
  final String date;

  Tips({required this.title, required this.imageUrl, required this.date});
}

class Menu {
  final String icon;
  final String iconActive;
  final bool active;

  Menu({required this.active, required this.icon, required this.iconActive});
}
