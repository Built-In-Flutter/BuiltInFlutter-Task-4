import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/category_list.dart';
import 'widgets/custom_app_bar.dart';
import 'package:portfolio/portfolio.dart';
import 'widgets/custom_tile.dart';
import 'widgets/recent_news.dart';
import 'widgets/title_bar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          TitleBar(screenWidth: screenWidth),
          CategoryList(),
          Recentnews(screenWidth: screenWidth),
        ],
      ),
    )));
  }
}
