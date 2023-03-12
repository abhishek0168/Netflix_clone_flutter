import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card_widget.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

const bannerImage =
    'https://www.themoviedb.org/t/p/w1280/9PFonBhy4cQy7Jz20NpMygczOkv.jpg';
const netflixLogo =
    'https://cdn.vox-cdn.com/thumbor/sW5h16et1R3au8ZLVjkcAbcXNi8=/0x0:3151x2048/2000x1333/filters:focal(1575x1024:1576x1025)/cdn.vox-cdn.com/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: Image.network(
              netflixLogo,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            // backgroundColor: kBlack,
            floating: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  size: 30,
                ),
              ),
              kwidth,
              // SizedBox(
              //   width: 30,
              //   // height: 30,
              //   child: Container(
              //     color: Colors.blue,
              //   ),
              // ),
            ],
          ),
        ],
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                // main image
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(bannerImage),
                    ),
                  ),
                ),

                // top gradient container
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            kBlack,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0.0, 0.9]),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          kBlack,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 0.9],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // bottom icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const MainIconButton(
                  titile: 'My list',
                  customeIcon: Icons.add,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'Play',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kWhite),
                      foregroundColor: MaterialStateProperty.all(kBlack)),
                ),
                const MainIconButton(
                  titile: 'Info',
                  customeIcon: Icons.info_outline,
                ),
              ],
            ),
            kheight,
            const MainTitleCard(
                title: 'Released in the Past Year', imageUrl: imageUrl),
            kheight25,
            const MainTitleCard(title: 'Treading Now', imageUrl: imageUrl),
            kheight25,
            const NumberCardWidget(
                title: 'Top 10 TV Shows In India Today', imageUrl: imageUrl),
            // kheight25,
            const MainTitleCard(title: 'Tense Dramas', imageUrl: imageUrl),
            kheight25,
            const MainTitleCard(
                title: 'South Indian Cenimas', imageUrl: imageUrl),
          ],
        ),
      ),
    );
  }
}

class MainIconButton extends StatelessWidget {
  const MainIconButton({
    super.key,
    required this.titile,
    required this.customeIcon,
    this.iconSize = 30,
    this.textSize = 20,
  });

  final String titile;
  final IconData customeIcon;
  final double iconSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          customeIcon,
          size: iconSize,
        ),
        Text(
          titile,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
