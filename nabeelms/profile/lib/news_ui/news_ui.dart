import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:untitled/api/news.dart';

import 'cards.dart';
import 'package:untitled/Model/article_model.dart';

class NewsUi extends StatefulWidget {
  NewsUi({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends State<NewsUi> {
  var url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=in&apiKey=cd79fff3bc1f495f82c4138d5c26fee4');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/icons/drawerIcon.png",
                height: 200,
                width: 200,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: Drawer(),
        body: NewsHome(),
      ),
    );
  }
}

class NewsHome extends StatefulWidget {
  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Trending",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: null,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Recent",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: null,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 350,
              child: FutureBuilder<Article>(
                  future: News().getNews(),
                  builder: (
                    context,
                    snapshot,
                  ) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.articles.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var data = snapshot.data!.articles[index];
                            print(
                              data.urlToImage.toString(),
                            );
                            return NewsHorizontalCards(
                              title: data.title.toString(),
                              urlToImage: data.urlToImage.toString(),
                              publishedAt: data.publishedAt.toString(),
                              url: data.url.toString(),
                            );
                          });
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      return Center(
                        child: Container(padding: EdgeInsets.all(20),
                            height: 70,
                            width: 70,
                            child: CircularProgressIndicator()),
                      );
                    }
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "BASED ON YOUR READING HISTORY",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            FutureBuilder<Article>(
                future: News().getNews(),
                builder: (
                  context,
                  snapshot,
                ) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.articles.length - 1,
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var data = snapshot.data!.articles[index];

                          return NewsVerticalCards(
                            description: data.description.toString(),
                            title: data.title.toString(),
                            urlToImage: data.urlToImage.toString(),
                            publishedAt: data.publishedAt.toString(),
                            url: data.url.toString(),
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return Center(
                      child: Container(padding: EdgeInsets.all(20),
                          height: 70,
                          width: 70,
                          child: CircularProgressIndicator()),
                    );
                  }
                }),
          ]),
    );
  }
}

class MyBullet extends StatefulWidget {
  @override
  State<MyBullet> createState() => _MyBulletState();
}

class _MyBulletState extends State<MyBullet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
