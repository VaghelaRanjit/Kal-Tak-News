import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/config/themes.dart';

import 'HomePageController.dart';
import 'config/app_pages.dart';
import 'config/app_routes.dart';
import 'controller/bottom_nav_controller.dart';

void main() {
  Get.put(BottomNavController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     // BottomNavBarController controller = Get.put(BottomNavBarController());
    BottomNavController controller = Get.put(BottomNavController());
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,

      home: HomePageController(),

      // initialRoute: AppRoutes.home,
      // routes: AppPages.routes,
    );
  }
}
