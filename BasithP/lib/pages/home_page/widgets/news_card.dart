import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({
    Key? key,
    required this.title,
    required this.screenWidth,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.author,
  }) : super(key: key);

  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final double screenWidth;
  final DateTime publishedAt;
  final String author;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      width: widget.screenWidth,
      margin: const EdgeInsets.only(bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff1F2022),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            SizedBox(
              width: 130,
              height: 139,
              child: Image(
                image: NetworkImage(widget.urlToImage),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widget.screenWidth - 194,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline6,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                        const SizedBox(height: 10),
                        Text(widget.author,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey[200], fontSize: 14),),
                        Text(widget.publishedAt.toString().substring(11, 16) + ",  " + widget.publishedAt.toString().substring(0, 10),
                        style:Theme.of(context).textTheme.bodyText1,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
