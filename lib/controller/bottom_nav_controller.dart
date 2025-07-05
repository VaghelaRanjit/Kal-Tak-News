import 'package:get/get.dart';
import 'package:news_app/Pages/Article_page/article_page.dart';
import 'package:news_app/Pages/Profile/profile_page.dart';
import 'package:news_app/Pages/home_page.dart';

class BottomNavBarController extends GetxController {
  RxInt index = 0.obs;

  var pages = [HomePage(), ArticlePage(), ProfilePage()];
}
