import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;

  Future<void> getTrendingNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=72015ad4a6234e2c85deed60bd351f9b";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        trendingNewsList.clear(); // clear previous
        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getNewsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=72015ad4a6234e2c85deed60bd351f9b";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        newsForYouList.clear();
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
