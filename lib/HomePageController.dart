import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/navigation_bar.dart';
import 'controller/bottom_nav_controller.dart';

class Homepagecontroller extends StatelessWidget {
  const Homepagecontroller({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavBarController controller = Get.put(BottomNavBarController());
    return Scaffold(
      floatingActionButton: BottomNavBar(),
      body: Obx(() => controller.pages[controller.index.value]),
    );
  }
}
