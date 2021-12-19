import 'package:flutter/material.dart';
import 'package:newzera/api/news.dart';
import 'package:newzera/model/article_model.dart';
import 'custom_tile.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({
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
            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.articles.length,
              itemBuilder: (BuildContext context, int index) {
                var data = snapshot.data!.articles[index];
                return Customtile(
                  screenWidth: screenWidth,
                  title: data.title ?? "",
                  description: data.description ?? "",
                  url: data.url ?? "",
                  urlToImage: data.urlToImage ??
                      "https://complianz.io/wp-content/uploads/2019/03/placeholder-300x202.jpg",
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
