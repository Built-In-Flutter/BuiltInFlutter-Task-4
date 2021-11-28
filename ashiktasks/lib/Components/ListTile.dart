import 'package:ashiktasks/Components/article_view.dart';
import 'package:flutter/material.dart';

class ListTiles extends StatefulWidget {
  const ListTiles(
      {Key key,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content})
      : super(key: key);

  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  @override
  State<ListTiles> createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleView(url: widget.url)));
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(widget.urlToImage),
            ),
            ListTile(
              title: Text(widget.title,
                style: Theme.of(context).primaryTextTheme.headline5
                ),
              subtitle: Text(widget.description),
            ),
          ],
        ),
      ),
    );
  }
}
