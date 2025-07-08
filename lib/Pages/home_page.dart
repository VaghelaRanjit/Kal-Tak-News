import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';

import 'HomePage/Widgets/TrendingCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //  final NewsController newsController = Get.put(NewsController());
    NewsController newsController = Get.put(NewsController());

    return Scaffold(
      //  backgroundColor: Color(0xff191828),
      // appBar: AppBar(
      //   // backgroundColor: Color(0xff191828),
      //   title: Text(
      //     "KAL-TAK NEWS",
      //     style: Theme.of(context).textTheme.headlineLarge,
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40), //change it later to 40px
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.dashboard),
                  ),
                  Text(
                    "Super-Fast News",
                    style: TextStyle(
                      fontSize: 25,
                      //   fontFamily: "Poppins", add font family later
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getNewsForYou();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),

              SizedBox(height: 20),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //
              //   child: Row(
              //     children: newsController.trendingNewsList
              //         .map(
              //           (e) => TrendingCard(
              //             ImgUrl: e.urlToImage!,
              //             title: e.title!,
              //             tag: "No 1",
              //             time: e.publishedAt!,
              //             author: e.author ?? "Unknown",
              //             onTap: () {},
              //           ),
              //         )
              //         .toList(),
              //   ),
              // ),
              Obx(() {
                if (newsController.trendingNewsList.isEmpty) {
                  return Center(
                    child: CircularProgressIndicator(),
                  ); // Or any placeholder
                }

                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: newsController.trendingNewsList
                        .map(
                          (e) => TrendingCard(
                            ImgUrl: e.urlToImage ?? "",
                            title: e.title ?? "",
                            tag: "No 1",
                            time: e.publishedAt ?? "",
                            author: e.author ?? "Unknown",
                            onTap: () {},
                          ),
                        )
                        .toList(),
                  ),
                );
              }),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For You",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// Column(
// children: [
// NewsTile(
// imgUrl:
// 'https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663',
// title:
// "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
// time: "2 days ago",
// author: "Ranjit",
// ),
// NewsTile(
// imgUrl:
// 'https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663',
// title:
// "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
// time: "2 days ago",
// author: "Ranjit",
// ),
// NewsTile(
// imgUrl:
// 'https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663',
// title:
// "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
// time: "2 days ago",
// author: "Ranjit",
// ),
// ],
// ),
