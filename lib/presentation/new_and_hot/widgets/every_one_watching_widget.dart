import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/home/widgets/screen_home.dart';
import 'package:netflix_clone/presentation/widgets/video_main_widget.dart';

class WatchingWidget extends StatelessWidget {
  const WatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const VideoMainWidget(),
        kheight,
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Joker',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            MainIconButton(
              titile: 'Share',
              customeIcon: Icons.send,
              textSize: 13,
            ),
            kwidth,
            MainIconButton(
              titile: 'My List',
              customeIcon: Icons.add,
              textSize: 13,
            ),
            kwidth,
            MainIconButton(
              titile: 'Play',
              customeIcon: Icons.play_arrow,
              textSize: 13,
            ),
            kwidth,
          ],
        ),
        // kheight,
        const Text(
          'Joker',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          'This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work, life and love in 1990s Manhattan.',
          style: TextStyle(color: kGrey),
        ),
        kheight25,
      ],
    );
  }
}
