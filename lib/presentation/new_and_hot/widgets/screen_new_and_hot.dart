import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/home/widgets/screen_home.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/every_one_watching_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_main_widget.dart';

const comingSoonImage =
    'https://wallpapers.com/images/featured/37j6jfl9mk1jmozx.jpg';

class ScreenNewandHotPage extends StatelessWidget {
  const ScreenNewandHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'New & Hot',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                size: 30,
              ),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: kWhite,
            labelColor: kBlack,
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            isScrollable: true,
            indicator: BoxDecoration(
              color: kWhite,
              borderRadius: kRadius30,
            ),
            tabs: const [
              Tab(
                text: '🍿 Coming Soon',
              ),
              Tab(
                text: '👀 Every One Watching',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryoneWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext ctx) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryoneWatching() {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => const WatchingWidget(),
      itemCount: 10,
    );
  }
}
