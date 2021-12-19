import 'package:flutter/material.dart';
import 'package:newzera/screen/home/main_bar.dart';
import 'catagories.dart';
import 'picbox.dart';
import 'custom_appbar.dart';
import 'recient_news.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            PicBox(),
            //Mainbar(),
            Catagories(),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      )),
    );
  }
}
