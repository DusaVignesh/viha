import 'package:basicapp/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: GNav(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        tabBackgroundColor: Colors.white,
        tabBorderRadius: 15,
        backgroundColor: Colors.black,
        activeColor: Colors.black,
        color: Colors.white,
        onTabChange: (value) => controller.tabIndex.value = value,
        gap: 15,
        tabs: [
          GButton(
            icon: Icons.chat,
            text: 'Chats',
          ),
          GButton(
            icon: Icons.add,
            text: 'MiddleWare',
          ),
          GButton(
            icon: Icons.groups,
            text: 'Groups',
          ),
        ],
      ),
    );
  }
}
