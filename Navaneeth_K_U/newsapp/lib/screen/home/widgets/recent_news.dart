import 'package:flutter/material.dart';
import 'package:portfolio/api/news.dart';
import 'package:portfolio/models/article_model.dart';
import 'custom_tile.dart';

class Recentnews extends StatelessWidget {
  const Recentnews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Article>(
        future: News().getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.articles!.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = snapshot.data!.articles[index];
                  return Customtile(
                    screenWidth: screenWidth,
                    title: snapshot.data!.articles![index].title ?? "",
                    description:
                        snapshot.data!.articles![index].description ?? "",
                    url: snapshot.data!.articles![index].url ?? "",
                    urlToImage: snapshot.data!.articles![index].urlToImage ??
                        "https://i.stack.imgur.com/y9DpT.jpg",
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
