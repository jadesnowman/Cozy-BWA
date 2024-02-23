import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.indigo,
                  ),
                ),
                Container(
                  width: 149,
                  height: 149,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Image.asset('assets/images/avatar.png', width: 130, height: 130)
              ],
            ),
            SizedBox(height: 65),
            Text(
              'Amanda Shayna',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              '12 : 30 minutes',
              style: heading2.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 60),
            TextButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(11),
                shape: const CircleBorder(),
                backgroundColor: Colors.red,
              ),
              onPressed: () => Navigator.pop(context),
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
