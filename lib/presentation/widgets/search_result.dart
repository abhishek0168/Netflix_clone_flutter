import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constant.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        kheight,
        Text(
          'Top Searches',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
