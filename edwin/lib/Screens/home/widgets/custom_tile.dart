import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {Key? key,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage});

  //Source source;
  //final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  //DateTime publishedAt;
  //String content;

  @override
  Widget build(BuildContext context) {
    final double _imageHeight = MediaQuery.of(context).size.width * 9 / 16;

    return Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        //   child: SingleChildScrollView(
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                urlToImage,
                fit: BoxFit.fitHeight,
                height: _imageHeight,
              )),
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
        ]
        )
    );
  }
}