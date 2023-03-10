import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constant.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w220_and_h330_face/v28T5F1IygM8vXWZIycfNEm3xcL.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          'Top Searches',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.4,
            children: List.generate(
              21,
              (index) {
                return const MainCard(
                  imageUrl: imageUrl,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
