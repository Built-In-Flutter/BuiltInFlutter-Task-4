import 'package:flutter/material.dart';
import 'package:news/api/news.dart';
import 'package:news/model/article_model.dart';
import 'package:news/screen/config/var/var.dart';

import 'custom_tile.dart';

class RecentNews extends StatefulWidget {
  const RecentNews({
    Key? key,
    required this.screenWidth,
    required this.category,
  }) : super(key: key);

  final double screenWidth;
  final String category;

  @override
  State<RecentNews> createState() => _RecentNewsState();
}

class _RecentNewsState extends State<RecentNews> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Article>(
        future: News().getNews(widget.category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.articles.length,
              itemBuilder: (BuildContext context, int index) {
                var data = snapshot.data!.articles[index];
                return CustomTile(
                  screenWidth: widget.screenWidth,
                  title: data.title,
                  description: data.description,
                  url: data.url,
                  urlToImage: data.urlToImage ?? placeHolderImage,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("snap err " + snapshot.error.toString());
          } else {
            return const Center(child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
