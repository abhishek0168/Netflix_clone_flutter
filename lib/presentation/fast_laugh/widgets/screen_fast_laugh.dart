import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';



class ScreenFastlaughPage extends StatelessWidget {
  const ScreenFastlaughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            20,
            (index) {
              log(index.toString());
              return VideoListItemWidget(index: index);
            },
          ),
        ),
      ),
    );
  }
}
