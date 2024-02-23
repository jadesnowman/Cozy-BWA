import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 375,
                        width: double.infinity,
                        color: Colors.amber,
                        child: Image.asset('assets/images/detail/pic.png',
                            width: double.infinity,
                            height: 375,
                            fit: BoxFit.cover),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        color: Colors.transparent,
                        margin: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: Image.asset(
                                'assets/images/navigations/Icon_left_outline.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/navigations/Icon_love_outline.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kuretakeso Hotel',
                      style: heading1.copyWith(fontSize: 22),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '\$${52}',
                        style:
                            heading1.copyWith(fontSize: 16, color: purpleColor),
                        children: [
                          TextSpan(
                            text: ' / month',
                            style: heading2.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Main Facilities',
                      style: heading3.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FacilityCard(
                          imageUrl: 'assets/images/detail/001-bar-counter.png',
                          name: 'kitchen',
                          amount: 2,
                        ),
                        const SizedBox(width: 35),
                        FacilityCard(
                          imageUrl: 'assets/images/detail/002-double-bed.png',
                          name: 'bedroom',
                          amount: 3,
                        ),
                        const SizedBox(width: 35),
                        FacilityCard(
                          imageUrl: 'assets/images/detail/003-cupboard.png',
                          name: 'closet',
                          amount: 3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Photos',
                      style: heading3.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 88,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset(
                            'assets/images/detail/pic-1.png',
                            height: 88,
                            width: 110,
                          ),
                          SizedBox(width: 18),
                          Image.asset(
                            'assets/images/detail/pic-2.png',
                            height: 88,
                            width: 110,
                          ),
                          SizedBox(width: 18),
                          Image.asset(
                            'assets/images/detail/pic-3.png',
                            height: 88,
                            width: 110,
                          ),
                          SizedBox(width: 18),
                          Image.asset(
                            'assets/images/detail/pic-4.png',
                            height: 88,
                            width: 110,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Location',
                      style: heading3.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jln. Kappan Sukses No. 20\nPalembang',
                          style: heading2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: grayColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset(
                            'assets/images/Icon_location_solid.png',
                            width: 22,
                            height: 22,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 327,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: purpleColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        onPressed: null,
                        child: Text(
                          'Book Now',
                          style: buttonTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FacilityCard extends StatelessWidget {
  final int amount;
  final String name;
  final String imageUrl;

  const FacilityCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl, width: 32, height: 32),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${amount} ',
            style: heading1.copyWith(fontSize: 16, color: purpleColor),
            children: [
              TextSpan(
                text: name,
                style: heading2.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
