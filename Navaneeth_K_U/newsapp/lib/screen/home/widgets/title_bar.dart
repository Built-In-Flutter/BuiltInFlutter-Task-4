import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/screen/details/detailed_news.dart';

import 'main_bar.dart';
class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text('Breaking News',
              style: Theme.of(context).primaryTextTheme.headline3),
          const SizedBox(height: 10),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(DetailedNews.routeName);
              },
              child: Mainbar()),
        ],
      ),
    );
  }
}

