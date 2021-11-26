import 'package:flutter/material.dart';
import '../../articleview.dart';

class CustomTile extends StatefulWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  }) : super(key: key);

  final double screenWidth;
  // final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(url: widget.url)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 30,
              // offset: Offset(0, 5),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            color: Colors.white12,
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    widget.urlToImage,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text(widget.title,style: TextStyle(color: Colors.deepOrange),),
                  subtitle: Text(widget.description,style: TextStyle(color: Colors.orange),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
