import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/news_controller.dart';
import '../HomePage/Widgets/news_tile.dart';
import '../NewsDetails/news_details.dart';
import 'Widgets/search_widget.dart';


class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Obx(
                    () => Column(
                  children: newsController.newsForYouList
                      .map(
                        (e) => NewsTile(
                      ontap: () {
                        Get.to(NewsDetailsPage(news: e));
                      },
                      imageUrl: e.urlToImage ??
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/317_1705413514.jpg",
                      title: e.title!,
                      author: e.author ?? "Unknown",
                      time: e.publishedAt!,
                    ),
                  )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}