import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const [
              CupertinoSearchTextField(
                style: TextStyle(color: Colors.white70),
              ),
              Expanded(
                // child: SearchIdleWidget(),
                child: SearchResultWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
