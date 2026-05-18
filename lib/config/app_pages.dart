import 'package:flutter/material.dart';
import 'package:news_app/Pages/HomePage/home_page.dart';
import 'package:news_app/Pages/NewsDetails/news_details.dart';
import 'package:news_app/Pages/Profile/profile_page.dart';
import 'package:news_app/Pages/SettingsPage/settings_page.dart';
import 'app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.profile: (context) => const ProfilePage(),
    AppRoutes.settings: (context) => const SettingsPage(),

  };
}