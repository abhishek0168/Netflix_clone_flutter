import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/screen_new_and_hot.dart';

class VideoMainWidget extends StatelessWidget {
  const VideoMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          // color: Colors.red[100],
          child: Image.network(
            comingSoonImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: kBlack.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_off_rounded,
                  color: kWhite, size: 20),
            ),
          ),
        )
      ],
    );
  }
}