import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/config/themes.dart';

import 'HomePageController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // BottomNavBarController controller = Get.put(BottomNavBarController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,

      home: Homepagecontroller(),
    );
  }
}
