import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloadsPage extends StatelessWidget {
  ScreenDownloadsPage({super.key});

  final List imageList = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/v28T5F1IygM8vXWZIycfNEm3xcL.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/peNC0eyc3TQJa6x4TdKcBPNP4t0.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Row(
            children: const [
              Icon(Icons.settings),
              kwidth,
              Text(
                'Smart downloads',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          kheight,
          const Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          kheight,
          const Text(
            'We will download a personalised selection of movies and shows for you, so there is always something to watch on your device',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            width: deviceSize.width,
            height: deviceSize.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: deviceSize.width * 0.40,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadImageWidget(
                  height: 0.5,
                  width: 0.3,
                  imageList: imageList[1],
                  margin: const EdgeInsets.only(left: 140, bottom: 30),
                  angle: 25,
                ),
                DownloadImageWidget(
                  height: 0.5,
                  width: 0.3,
                  imageList: imageList[2],
                  margin: const EdgeInsets.only(right: 140, bottom: 30),
                  angle: -25,
                ),
                DownloadImageWidget(
                  height: 0.6,
                  width: 0.4,
                  imageList: imageList[0],
                  margin: const EdgeInsets.only(left: 0),
                ),
              ],
            ),
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {},
            color: buttonColorBlue,
            child: const Text(
              'Set up',
              style: TextStyle(fontSize: 20),
            ),
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {},
            color: buttonColorWhite,
            child: const Text(
              'See what you can downloads',
              style: TextStyle(fontSize: 20, color: kBlack),
            ),
          )
        ],
      ),
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.height,
      required this.width});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: deviceSize.width * width,
        height: deviceSize.width * height,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}
