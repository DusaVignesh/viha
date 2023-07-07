import 'package:basicapp/constants/constants.dart';
import 'package:basicapp/controller/controller.dart';
import 'package:basicapp/custom/bottom-navigation.dart';
import 'package:basicapp/pages/groups-chat.dart';
import 'package:basicapp/pages/middleware.dart';
import 'package:basicapp/pages/primary-chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        body: Obx(() {
          if (controller.tabIndex.value == 0) return PrimaryChat();
          if (controller.tabIndex.value == 1) return Middleware();
          if (controller.tabIndex.value == 2) return GroupsChat();
          return CircularProgressIndicator();
        }),
        bottomNavigationBar: CustomBottomNavigation());
  }
}
