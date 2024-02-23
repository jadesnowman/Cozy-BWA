import 'package:cozy_marketplace/pages/home_page.dart';
import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/images/house.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Find Cozy House\nto Stay and Happy',
                style: heading1.copyWith(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                style: heading2.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 210,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: purpleColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Explore Now',
                      style: buttonTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    )),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
