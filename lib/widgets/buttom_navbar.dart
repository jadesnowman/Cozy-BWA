import 'package:cozy_marketplace/models/index.dart';
import 'package:cozy_marketplace/theme.dart';
import 'package:flutter/material.dart';

String iconCardSolid1 = 'assets/images/navigations/Icon_card_solid-1.png';
String iconCardSolid = 'assets/images/navigations/Icon_card_solid.png';

String iconHomeSolid1 = 'assets/images/navigations/Icon_home_solid-1.png';
String iconHomeSolid = 'assets/images/navigations/Icon_home_solid.png';

String iconLeftOutline = 'assets/images/navigations/Icon_left_outline.png';
String iconLoveOutline = 'assets/images/navigations/Icon_love_outline.png';

String iconLoveSolid1 = 'assets/images/navigations/Icon_love_solid-1.png';
String iconLoveSolid = 'assets/images/navigations/Icon_love_solid.png';

String iconMailSolid1 = 'assets/images/navigations/Icon_mail_solid-1.png';
String iconMailSolid = 'assets/images/navigations/Icon_mail_solid.png';

class ButtomNavbar extends StatelessWidget {
  const ButtomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 34),
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      height: 65,
      decoration: BoxDecoration(
        color: grayColor,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NavbarItem(
            menu: Menu(
              icon: iconHomeSolid,
              iconActive: iconHomeSolid1,
              active: false,
            ),
          ),
          const SizedBox(width: 55),
          NavbarItem(
            menu: Menu(
              icon: iconCardSolid1,
              iconActive: iconCardSolid,
              active: false,
            ),
          ),
          const SizedBox(width: 55),
          NavbarItem(
            menu: Menu(
              icon: iconLoveSolid1,
              iconActive: iconLoveSolid,
              active: true,
            ),
          ),
          const SizedBox(width: 55),
          NavbarItem(
            menu: Menu(
              icon: iconMailSolid1,
              iconActive: iconMailSolid,
              active: false,
            ),
          )
        ],
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  final Menu menu;

  const NavbarItem({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Image.asset(!menu.active ? menu.icon : menu.iconActive),
        !menu.active
            ? Container()
            : Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                ),
              )
      ],
    );
  }
}
