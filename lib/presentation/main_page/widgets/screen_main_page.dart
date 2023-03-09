import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/screen_fast_laugh.dart';
import 'package:netflix_clone/presentation/home/widgets/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/search/widgets/screen_search.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final List _pages = [
    ScreenHomePage(),
    ScreenNewandHotPage(),
    ScreenFastlaughPage(),
    ScreenSearchPage(),
    ScreenDownloadsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int value, _) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
