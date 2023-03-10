import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_widget.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        // kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
            separatorBuilder: (context, index) => kwidth,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => MainCard(
              imageUrl: imageUrl,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
