import 'package:flutter/material.dart';
import 'package:news_app/Pages/Article_page/Widgets/search_widget.dart';

import '../HomePage/Widgets/news_tile.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
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
        ),
      ),
    );
  }
}
