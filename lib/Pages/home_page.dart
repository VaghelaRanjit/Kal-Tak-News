import 'package:flutter/material.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrendingCard.dart';

import 'HomePage/Widgets/news_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xff191828),
      appBar: AppBar(
        // backgroundColor: Color(0xff191828),
        title: Text(
          "KAL-TAK NEWS",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    TrendingCard(
                      ImgUrl:
                          "https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663",
                      time: "2 days ago",
                      title:
                          "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
                      tag: "Trending No 1",
                      author: "Ranjit Vaghela",
                    ),
                    TrendingCard(
                      ImgUrl:
                          "https://images.bhaskarassets.com/webp/thumb/256x0/web2images/960/2025/07/01/3cd59192-128b-4762-88ea-cc0959f70374_1751280588558.jpg",
                      time: "2 days ago",
                      title:
                          "ક્લાઉડવિઝન 2025:સિલ્વર ઓક યુનિવર્સિટીમાં AWS નિષ્ણાત દ્વારા વિદ્યાર્થીઓને ક્લાઉડ ટેકનોલોજીનું માર્ગદર્શન",
                      tag: "Trending No 2",
                      author: "Ranjit Vaghela",
                    ),
                    TrendingCard(
                      ImgUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/960/2025/06/23/22_1750648215.jpg",
                      time: "2 days ago",
                      title:
                          "પંત અમ્પાયર પર ભડક્યો, બોલ ફેંકી દીધો:બુમરાહ SENA દેશોમાં 150 વિકેટ લેનારો પ્રથમ બોલર; બ્રુકને 3 જીવનદાન મળ્યાં, સદી ચૂક્યો; મોમેન્ટ્સ-ફેક્ટ્સ",
                      tag: "Trending No 3 ",
                      author: "Ranjit Vaghela",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
              Column(
                children: [
                  NewsTile(
                    imgUrl:
                        'https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663',
                    title:
                        "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
                    time: "2 days ago",
                    author: "Ranjit",
                  ),
                  NewsTile(
                    imgUrl:
                        'https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663',
                    title:
                        "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
                    time: "2 days ago",
                    author: "Ranjit",
                  ),
                  NewsTile(
                    imgUrl:
                        'https://images.news9live.com/wp-content/uploads/2024/01/1-61.png?w=663',
                    title:
                        "ભગવાન રામનો ઉપદેશ: સમસ્યાઓથી ડરશો નહીં, તેનો ઉકેલ શોધો:વનવાસ દરમિયાન પણ શ્રીરામ રાક્ષસોનો વધ કરીને ઋષિઓ અને સંતોના કષ્ટ દૂર કરી રહ્યા હતા",
                    time: "2 days ago",
                    author: "Ranjit",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
