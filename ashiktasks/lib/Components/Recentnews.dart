import 'package:ashiktasks/Components/ListTile.dart';
import 'package:ashiktasks/api/article_api.dart';
import 'package:ashiktasks/api/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Recentnews extends StatefulWidget {
  const Recentnews({Key key, this.category}) : super(key: key);

  final category;

  @override
  State<Recentnews> createState() => _RecentnewsState();
}

class _RecentnewsState extends State<Recentnews> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<Article>>(
          future: News().getNews(widget.category),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTiles(
                      title: snapshot.data[index].title,
                      description: snapshot.data[index].description ?? "",
                      url: snapshot.data[index].url,
                      urlToImage: snapshot.data[index].urlToImage ??
                          "https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png",
                    );
                  });
            } else {
              return SpinKitFadingCircle(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.white : Colors.black,
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
