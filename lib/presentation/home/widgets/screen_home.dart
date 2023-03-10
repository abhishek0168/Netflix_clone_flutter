import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card_widget.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: const [
              MainTitleCard(
                  title: 'Released in the Past Year', imageUrl: imageUrl),
              kheight25,
              MainTitleCard(title: 'Treading Now', imageUrl: imageUrl),
              kheight25,
              NumberCardWidget(
                  title: 'Top 10 TV Shows In India Today', imageUrl: imageUrl),
              // kheight25,
              MainTitleCard(title: 'Tense Dramas', imageUrl: imageUrl),
              kheight25,
              MainTitleCard(title: 'South Indian Cenimas', imageUrl: imageUrl),
            ],
          ),
        ),
      ),
    );
  }
}
