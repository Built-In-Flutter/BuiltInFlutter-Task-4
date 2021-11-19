import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'news_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsHorizontalCards extends StatelessWidget {
  final String title;

  final String url;

  final String? urlToImage;
  final String publishedAt;

  NewsHorizontalCards({
    required this.url,
    required this.publishedAt,
    required this.title,
    required this.urlToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 15),
      width: 330,
      height: 360,
      decoration: BoxDecoration(
          border: Border.all(
            width: .5,
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          _launchURL();
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: Image.network(
                  urlToImage!,
                  fit: BoxFit.cover,
                  width: 300,
                  height: 180,
                ),
              ),
            ),
            SizedBox(
              width: 310,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 21),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: [
                  Text(
                    "$publishedAt ",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MyBullet(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _launchURL() async => await canLaunch(url)
      ? await launch(url)
      : Fluttertoast.showToast(
          msg: "couldn't find the url $url",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
}

class NewsVerticalCards extends StatelessWidget {
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;

  NewsVerticalCards({
    required this.url,
    required this.description,
    required this.publishedAt,
    required this.title,
    required this.urlToImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchURL();
      },
      child: Container(
        margin: EdgeInsets.only(top: 20,left: 12,right: 12),
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400, width: .5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
        scrollDirection: Axis.horizontal,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)),
              child: Image.network(
                "${urlToImage!}",
                fit: BoxFit.cover,
                width: 120,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,left: 10),
              width: 260,
              child: Column(
                children: [
                  Text(
                    title!,
                    style: TextStyle(fontSize: 20, overflow: TextOverflow.fade),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _launchURL() async => await canLaunch(url!)
      ? await launch(url!)
      : Fluttertoast.showToast(
          msg: "couldn't find the url $url",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
}
