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
