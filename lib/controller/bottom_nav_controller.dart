import 'package:get/get.dart';

import '../Pages/Article_page/article_page.dart';
import '../Pages/HomePage/home_page.dart';
import '../Pages/Profile/profile_page.dart';


class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    const HomePage(),
    const ArticalPage(),
    const ProfilePage(),
  ];
}