import 'package:flutter/material.dart';
import 'package:news_app/api/news.dart';
import 'package:news_app/models/article_model.dart';
import 'custom_tile.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<Article>>(
          future: News().getNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomTile(
                    title: snapshot.data![index].title,
                    description: snapshot.data![index].description,
                    url: snapshot.data![index].url,
                    urlToImage: snapshot.data![index].urlToImage ??
                        "https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg",
                    screenWidth: screenWidth,
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const Center(
                  child: Center(child: CircularProgressIndicator()));
            }
          }),
    );
  }
}
