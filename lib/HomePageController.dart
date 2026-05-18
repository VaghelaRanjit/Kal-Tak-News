import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/navigation_bar.dart';
import 'controller/bottom_nav_controller.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      floatingActionButton: const MyBottonNav(),
      body: Obx(
            () => controller.pages[controller.index.value],
      ),
    );
  }
}