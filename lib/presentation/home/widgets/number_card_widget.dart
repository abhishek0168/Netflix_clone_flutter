import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_widget.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({
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
          child: ListView.builder(
            // separatorBuilder: (context, index) => kwidth,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                      height: 30,
                    ),
                    Container(
                      width: 130,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: kRadius10,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imageUrl),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: -10,
                  bottom: 0,
                  child: BorderedText(
                    strokeColor: kWhite,
                    strokeWidth: 5,
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(
                        fontSize: 130,
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                      ),
                    ),
                  ),
                )
              ],
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
