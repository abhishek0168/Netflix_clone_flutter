import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/presentation/home/widgets/screen_home.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/widgets/video_main_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      height: 450,

      // color: Colors.amber[100],
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Column(
              children: [
                Text(
                  ('feb').toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey),
                ),
                const Text(
                  '11',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: deviceSize.width - 50,
            // color: Colors.green[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoMainWidget(),
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
                      titile: 'Remind Me',
                      customeIcon: Icons.notifications_outlined,
                      iconSize: 25,
                      textSize: 13,
                    ),
                    kwidth,
                    MainIconButton(
                      titile: 'Info',
                      customeIcon: Icons.info,
                      iconSize: 25,
                      textSize: 13,
                    ),
                    kwidth,
                  ],
                ),
                const Text('Coming this friday'),
                kheight,
                const Text(
                  'Joker',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Set in 1981, it follows Arthur Fleck, a failed clown and aspiring stand-up comic whose descent into mental illness and nihilism inspires a violent countercultural revolution against the prosperous in a decaying Gotham City. Robert De Niro, Zazie Beetz and Frances Conroy appear in supporting roles.',
                  style: TextStyle(color: kGrey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


